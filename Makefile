VERILOG = iverilog
TARGET = voter_case.vcd
TEMP = simple.vpp
$(TARGET) : simple.vvp
	vvp simple.vvp

simple.vvp: voter_tb.v voter.v
	$(VERILOG) -o simple.vvp voter_tb.v voter.v
clean:
	-del $(TARGET)
	-del $(TEMP)
