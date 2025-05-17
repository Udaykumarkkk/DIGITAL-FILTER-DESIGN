# DIGITAL-FILTER-DESIGN
*Company*: CODTECH IT SOLUTION

*NAME*:KARANAM UDAYKUMAR

*INTERN ID*: CT12WX115

*DOMAIN*: VLSI

*DURATION*: 3 MONTHS

*MENTOR*: NEELA SANTHOSH


## DESCRIPTION OF THE PROJECT (FIR FILTER)

Finite Impulse Response (FIR) Filter Description
A Finite Impulse Response (FIR) filter is a type of digital filter that has a finite duration impulse response. It is widely used in digital signal processing applications due to its simplicity and flexibility.

Filter Specifications:
- Filter Type: Low-pass, high-pass, band-pass, or band-stop
- Filter Order: The number of taps or coefficients in the filter
- Cutoff Frequency: The frequency at which the filter starts to attenuate the signal
- Stopband Attenuation: The amount of attenuation in the stopband

Design Steps:
1. Determine Filter Specifications: Determine the filter type, order, cutoff frequency, and stopband attenuation based on the application requirements.
2. Choose a Design Method: Choose a design method such as windowing, frequency sampling, or optimal design.
3. Calculate Filter Coefficients: Calculate the filter coefficients using the chosen design method.
4. Implement the Filter: Implement the filter using a digital signal processor or a field-programmable gate array (FPGA).



FIR Filter Design Formula
The output sequence of a causal discrete-time FIR filter of order N is given by:

y[n] = ∑[b_i * x[n-i]] from i=0 to N

where:
- x[n] is the input signal
- y[n] is the output signal
- N is the filter order
- b_i are the filter coefficients

- ![1](https://github.com/user-attachments/assets/0c5c55d9-cece-425d-841d-06386be0c13a)

FIR Filter Design Methods:
- Windowing Method: This method involves multiplying the ideal filter response with a window function to obtain the filter coefficients.
- Frequency Sampling Method: This method involves sampling the desired frequency response and using the inverse discrete Fourier transform (IDFT) to obtain the filter coefficients.
- Optimal Design Method: This method involves using optimization techniques to design the filter coefficients that meet the desired specifications.

![2](https://github.com/user-attachments/assets/2f9d209d-af28-4ecd-8a79-aa5f14d66be3)
![3](https://github.com/user-attachments/assets/243f2552-2a79-4fb5-a097-22ca56cd7b35)

## VERILOG CODE 

module fir_filter(
    input clk,
    input signed [15:0] noisy_signal,
    output signed [15:0] filtered_signal
);

reg signed [15:0] delayed_signal [0:8];
reg signed [31:0] prod [0:8];
reg signed [35:0] sum;

integer i;

// Coefficients for 9-tap FIR filter, symmetric
reg signed [15:0] coeff [0:8];

initial begin
    coeff[0] = 16'h04F6;
    coeff[1] = 16'h0AE4;
    coeff[2] = 16'h1089;
    coeff[3] = 16'h1496;
    coeff[4] = 16'h160F;
    coeff[5] = 16'h1496;
    coeff[6] = 16'h1089;
    coeff[7] = 16'h0AE4;
    coeff[8] = 16'h04F6;
end

// Shift register: delay line
always @(posedge clk) begin
    delayed_signal[0] <= noisy_signal;
         for (i = 1; i <= 8; i = i + 1) begin
            delayed_signal[i] <= delayed_signal[i - 1];
        end
end

// Multiply
always @(posedge clk) begin
    for (i = 0; i <= 8; i = i + 1) begin
        prod[i] <= delayed_signal[i] * coeff[i];
    end
end

// Summation
always @(posedge clk) begin
    sum <= 0;
    for (i = 0; i <= 8; i = i + 1) begin
        sum <= sum + prod[i];
    end
end

// Output
assign filtered_signal = sum[35:20];

endmodule





## TESTBENCH CODE


module tb_filter;


localparam CORDIC_CLK_PERIOD = 2; // To create 500 MHz CORDIC sampling clock
localparam FIR_CLK_PERIOD = 10; // To create 100 MHz FIR Lowpass filter sampling clock

localparam signed [15:0] PI_POS = 16'h6488;                             
localparam signed [15:0] PI_NEG = 16'h9878; // -pi in fixed-point 1.2.13

localparam PHASE_INC_2MHZ = 200; // Phase jump for 2MHz sine wave synthesis
localparam PHASE_INC_30MHZ = -3000; // Phase jump for 30MHz sine wave synthesis

reg cordic_clk = 1'b0;
reg fir_clk = 1'b0;
reg phase_tvalid = 1'b0;

reg signed [15:0] phase_2MHz = 0;                            
reg signed [15:0] phase_30MHz = 0;                             

wire sincos_2MHz_tvalid;
wire signed [15:0] sin_2MHz, cos_2MHz;                           
wire sincos_30MHz_tvalid;
wire signed [15:0] sin_30MHz, cos_30MHz;                            

reg signed [15:0] noisy_signal = 0;                                            
wire signed [15:0] filtered_signal;                                                  

                                     
cordic_0 cordic_inst_0 (
    .aclk(cordic_clk),
    .s_axis_phase_tvalid(phase_tvalid),
    .s_axis_phase_tdata(phase_2MHz),
    .m_axis_dout_tvalid(sincos_2MHz_tvalid),
    .m_axis_dout_tdata({sin_2MHz, cos_2MHz})
);

cordic_0 cordic_inst_1 (
    .aclk(cordic_clk),
    .s_axis_phase_tvalid(phase_tvalid),
    .s_axis_phase_tdata(phase_30MHz),
    .m_axis_dout_tvalid(sincos_30MHz_tvalid),
    .m_axis_dout_tdata({sin_30MHz, cos_30MHz})
);

fir fir_inst (
    .clk(fir_clk),
    .noisy_signal(noisy_signal),
    .filtered_signal(filtered_signal)
);

                  
always begin
                                                    
end

always begin
                                           
end

              
always @(posedge cordic_clk) begin
    phase_tvalid <= 1'b1;
    if (phase_2MHz + PHASE_INC_2MHZ < PI_POS) begin
        phase_2MHz <= phase_2MHz + PHASE_INC_2MHZ;
    end else begin
        phase_2MHz <= PI_NEG + (phase_2MHz + PHASE_INC_2MHZ - PI_POS);
    end

    if (phase_30MHz + PHASE_INC_30MHZ < PI_POS) begin
        phase_30MHz <= phase_30MHz + PHASE_INC_30MHZ;
    end else begin
        phase_30MHz <= PI_NEG + (phase_30MHz + PHASE_INC_30MHZ - PI_POS);
    end
end

// Noisy signal
always @(posedge fir_clk) begin
    noisy_signal <= (sin_2MHz + sin_30MHz) / 2;
end

endmodule
Key Characteristics:
- Finite Impulse Response: The filter's impulse response is finite in duration, meaning that it settles to zero after a certain number of samples.
- Linear Phase Response: FIR filters can be designed to have a linear phase response, which is essential for applications where phase distortion needs to be minimized.
- Stability: FIR filters are always stable, as they do not have feedback loops that can cause instability.

How FIR Filters Work:
1. Input Signal: The input signal is fed into the FIR filter.
2. Tapped Delay Line: The input signal is delayed by a series of taps, each representing a sample of the input signal.
3. Coefficient Multiplication: Each tap is multiplied by a coefficient, which determines the filter's frequency response.
4. Summation: The weighted tap values are summed to produce the output signal.

Applications:
- Audio Processing: FIR filters are used in audio processing applications such as equalization, noise reduction, and echo cancellation.
- Image Processing: FIR filters are used in image processing applications such as image sharpening, blurring, and edge detection.
- Communication Systems: FIR filters are used in communication systems to shape the signal spectrum and remove noise.

Advantages:
- Simple Design: FIR filters have a simple design and are easy to implement.
- Linear Phase Response: FIR filters can be designed to have a linear phase response, which is essential for applications where phase distortion needs to be minimized.
- Stability: FIR filters are always stable, making them suitable for a wide range of applications.

Disadvantages:
- Higher Order: FIR filters often require a higher order than IIR filters to achieve the same frequency response, which can increase computational complexity.
- Computational Complexity: FIR filters can be computationally intensive, especially for high-order filters.

In summary, FIR filters are a type of digital filter that offers simplicity, stability, and flexibility, making them suitable for a wide range of digital signal processing applications.



## OUTPUT 
![1](https://github.com/user-attachments/assets/de0ade08-e538-49f0-9f1c-0c17e23ab65d)
![WAVE FORM](https://github.com/user-attachments/assets/d047febb-b8b9-483e-96f4-1fb52d155971)
