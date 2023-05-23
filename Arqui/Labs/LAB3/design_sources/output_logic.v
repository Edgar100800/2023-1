module output_logic(input wire [6:0] current,
                 input wire who,
                 output reg [3:0] digit1, //less sign
                 output reg [3:0] digit2,
                 output reg [3:0] digit3);

    reg[6:0] next;
    always @(current) begin
        
        case (who)
            1: 
            begin
                //incrementar
                if (current == 100)
                    next = current; // mantenerlo
                else
                     next = current + 1;
            end
            default: 
            begin
                //decrementar
                if (current == 0)
                    next = current; // mantenerlo
                else
                     next = current - 1;
            end
        endcase

        // ahora viene lo bueno

        case (next)
            000:
            begin
                digit1 = 0; //less signigicant
                digit2 = 0;
                digit3 = 0;
            end
            001:
            begin
                digit1 = 1; //less signigicant
                digit2 = 0;
                digit3 = 0;
            end
            002:
            begin
                digit1 = 2; //less signigicant
                digit2 = 0;
                digit3 = 0;
            end
            003:
            begin
                digit1 = 3; //less signigicant
                digit2 = 0;
                digit3 = 0;
            end
            004:
            begin
                digit1 = 4; //less signigicant
                digit2 = 0;
                digit3 = 0;
            end
            005:
            begin
                digit1 = 5; //less signigicant
                digit2 = 0;
                digit3 = 0;
            end
            006:
            begin
                digit1 = 6; //less signigicant
                digit2 = 0;
                digit3 = 0;
            end
            007:
            begin
                digit1 = 7; //less signigicant
                digit2 = 0;
                digit3 = 0;
            end
            008:
            begin
                digit1 = 8; //less signigicant
                digit2 = 0;
                digit3 = 0;
            end
            009:
            begin
                digit1 = 9; //less signigicant
                digit2 = 0;
                digit3 = 0;
            end
            010:
            begin
                digit1 = 0; //less signigicant
                digit2 = 1;
                digit3 = 0;
            end
            011:
            begin
                digit1 = 1; //less signigicant
                digit2 = 1;
                digit3 = 0;
            end
            012:
            begin
                digit1 = 2; //less signigicant
                digit2 = 1;
                digit3 = 0;
            end
            013:
            begin
                digit1 = 3; //less signigicant
                digit2 = 1;
                digit3 = 0;
            end
            014:
            begin
                digit1 = 4; //less signigicant
                digit2 = 1;
                digit3 = 0;
            end
            015:
            begin
                digit1 = 5; //less signigicant
                digit2 = 1;
                digit3 = 0;
            end
            016:
            begin
                digit1 = 6; //less signigicant
                digit2 = 1;
                digit3 = 0;
            end
            017:
            begin
                digit1 = 7; //less signigicant
                digit2 = 1;
                digit3 = 0;
            end
            018:
            begin
                digit1 = 8; //less signigicant
                digit2 = 1;
                digit3 = 0;
            end
            019:
            begin
                digit1 = 9; //less signigicant
                digit2 = 1;
                digit3 = 0;
            end
            020:
            begin
                digit1 = 0; //less signigicant
                digit2 = 2;
                digit3 = 0;
            end
            021:
            begin
                digit1 = 1; //less signigicant
                digit2 = 2;
                digit3 = 0;
            end
            022:
            begin
                digit1 = 2; //less signigicant
                digit2 = 2;
                digit3 = 0;
            end
            023:
            begin
                digit1 = 3; //less signigicant
                digit2 = 2;
                digit3 = 0;
            end
            024:
            begin
                digit1 = 4; //less signigicant
                digit2 = 2;
                digit3 = 0;
            end
            025:
            begin
                digit1 = 5; //less signigicant
                digit2 = 2;
                digit3 = 0;
            end
            026:
            begin
                digit1 = 6; //less signigicant
                digit2 = 2;
                digit3 = 0;
            end
            027:
            begin
                digit1 = 7; //less signigicant
                digit2 = 2;
                digit3 = 0;
            end
            028:
            begin
                digit1 = 8; //less signigicant
                digit2 = 2;
                digit3 = 0;
            end
            029:
            begin
                digit1 = 9; //less signigicant
                digit2 = 2;
                digit3 = 0;
            end
            030:
            begin
                digit1 = 0; //less signigicant
                digit2 = 3;
                digit3 = 0;
            end
            031:
            begin
                digit1 = 1; //less signigicant
                digit2 = 3;
                digit3 = 0;
            end
            032:
            begin
                digit1 = 2; //less signigicant
                digit2 = 3;
                digit3 = 0;
            end
            033:
            begin
                digit1 = 3; //less signigicant
                digit2 = 3;
                digit3 = 0;
            end
            034:
            begin
                digit1 = 4; //less signigicant
                digit2 = 3;
                digit3 = 0;
            end
            035:
            begin
                digit1 = 5; //less signigicant
                digit2 = 3;
                digit3 = 0;
            end
            036:
            begin
                digit1 = 6; //less signigicant
                digit2 = 3;
                digit3 = 0;
            end
            037:
            begin
                digit1 = 7; //less signigicant
                digit2 = 3;
                digit3 = 0;
            end
            038:
            begin
                digit1 = 8; //less signigicant
                digit2 = 3;
                digit3 = 0;
            end
            039:
            begin
                digit1 = 9; //less signigicant
                digit2 = 3;
                digit3 = 0;
            end
            040:
            begin
                digit1 = 0; //less signigicant
                digit2 = 4;
                digit3 = 0;
            end
            041:
            begin
                digit1 = 1; //less signigicant
                digit2 = 4;
                digit3 = 0;
            end
            042:
            begin
                digit1 = 2; //less signigicant
                digit2 = 4;
                digit3 = 0;
            end
            043:
            begin
                digit1 = 3; //less signigicant
                digit2 = 4;
                digit3 = 0;
            end
            044:
            begin
                digit1 = 4; //less signigicant
                digit2 = 4;
                digit3 = 0;
            end
            045:
            begin
                digit1 = 5; //less signigicant
                digit2 = 4;
                digit3 = 0;
            end
            046:
            begin
                digit1 = 6; //less signigicant
                digit2 = 4;
                digit3 = 0;
            end
            047:
            begin
                digit1 = 7; //less signigicant
                digit2 = 4;
                digit3 = 0;
            end
            048:
            begin
                digit1 = 8; //less signigicant
                digit2 = 4;
                digit3 = 0;
            end
            049:
            begin
                digit1 = 9; //less signigicant
                digit2 = 4;
                digit3 = 0;
            end
            050:
            begin
                digit1 = 0; //less signigicant
                digit2 = 5;
                digit3 = 0;
            end
            051:
            begin
                digit1 = 1; //less signigicant
                digit2 = 5;
                digit3 = 0;
            end
            052:
            begin
                digit1 = 2; //less signigicant
                digit2 = 5;
                digit3 = 0;
            end
            053:
            begin
                digit1 = 3; //less signigicant
                digit2 = 5;
                digit3 = 0;
            end
            054:
            begin
                digit1 = 4; //less signigicant
                digit2 = 5;
                digit3 = 0;
            end
            055:
            begin
                digit1 = 5; //less signigicant
                digit2 = 5;
                digit3 = 0;
            end
            056:
            begin
                digit1 = 6; //less signigicant
                digit2 = 5;
                digit3 = 0;
            end
            057:
            begin
                digit1 = 7; //less signigicant
                digit2 = 5;
                digit3 = 0;
            end
            058:
            begin
                digit1 = 8; //less signigicant
                digit2 = 5;
                digit3 = 0;
            end
            059:
            begin
                digit1 = 9; //less signigicant
                digit2 = 5;
                digit3 = 0;
            end
            060:
            begin
                digit1 = 0; //less signigicant
                digit2 = 6;
                digit3 = 0;
            end
            061:
            begin
                digit1 = 1; //less signigicant
                digit2 = 6;
                digit3 = 0;
            end
            062:
            begin
                digit1 = 2; //less signigicant
                digit2 = 6;
                digit3 = 0;
            end
            063:
            begin
                digit1 = 3; //less signigicant
                digit2 = 6;
                digit3 = 0;
            end
            064:
            begin
                digit1 = 4; //less signigicant
                digit2 = 6;
                digit3 = 0;
            end
            065:
            begin
                digit1 = 5; //less signigicant
                digit2 = 6;
                digit3 = 0;
            end
            066:
            begin
                digit1 = 6; //less signigicant
                digit2 = 6;
                digit3 = 0;
            end
            067:
            begin
                digit1 = 7; //less signigicant
                digit2 = 6;
                digit3 = 0;
            end
            068:
            begin
                digit1 = 8; //less signigicant
                digit2 = 6;
                digit3 = 0;
            end
            069:
            begin
                digit1 = 9; //less signigicant
                digit2 = 6;
                digit3 = 0;
            end
            070:
            begin
                digit1 = 0; //less signigicant
                digit2 = 7;
                digit3 = 0;
            end
            071:
            begin
                digit1 = 1; //less signigicant
                digit2 = 7;
                digit3 = 0;
            end
            072:
            begin
                digit1 = 2; //less signigicant
                digit2 = 7;
                digit3 = 0;
            end
            073:
            begin
                digit1 = 3; //less signigicant
                digit2 = 7;
                digit3 = 0;
            end
            074:
            begin
                digit1 = 4; //less signigicant
                digit2 = 7;
                digit3 = 0;
            end
            075:
            begin
                digit1 = 5; //less signigicant
                digit2 = 7;
                digit3 = 0;
            end
            076:
            begin
                digit1 = 6; //less signigicant
                digit2 = 7;
                digit3 = 0;
            end
            077:
            begin
                digit1 = 7; //less signigicant
                digit2 = 7;
                digit3 = 0;
            end
            078:
            begin
                digit1 = 8; //less signigicant
                digit2 = 7;
                digit3 = 0;
            end
            079:
            begin
                digit1 = 9; //less signigicant
                digit2 = 7;
                digit3 = 0;
            end
            080:
            begin
                digit1 = 0; //less signigicant
                digit2 = 8;
                digit3 = 0;
            end
            081:
            begin
                digit1 = 1; //less signigicant
                digit2 = 8;
                digit3 = 0;
            end
            082:
            begin
                digit1 = 2; //less signigicant
                digit2 = 8;
                digit3 = 0;
            end
            083:
            begin
                digit1 = 3; //less signigicant
                digit2 = 8;
                digit3 = 0;
            end
            084:
            begin
                digit1 = 4; //less signigicant
                digit2 = 8;
                digit3 = 0;
            end
            085:
            begin
                digit1 = 5; //less signigicant
                digit2 = 8;
                digit3 = 0;
            end
            086:
            begin
                digit1 = 6; //less signigicant
                digit2 = 8;
                digit3 = 0;
            end
            087:
            begin
                digit1 = 7; //less signigicant
                digit2 = 8;
                digit3 = 0;
            end
            088:
            begin
                digit1 = 8; //less signigicant
                digit2 = 8;
                digit3 = 0;
            end
            089:
            begin
                digit1 = 9; //less signigicant
                digit2 = 8;
                digit3 = 0;
            end
            090:
            begin
                digit1 = 0; //less signigicant
                digit2 = 9;
                digit3 = 0;
            end
            091:
            begin
                digit1 = 1; //less signigicant
                digit2 = 9;
                digit3 = 0;
            end
            092:
            begin
                digit1 = 2; //less signigicant
                digit2 = 9;
                digit3 = 0;
            end
            093:
            begin
                digit1 = 3; //less signigicant
                digit2 = 9;
                digit3 = 0;
            end
            094:
            begin
                digit1 = 4; //less signigicant
                digit2 = 9;
                digit3 = 0;
            end
            095:
            begin
                digit1 = 5; //less signigicant
                digit2 = 9;
                digit3 = 0;
            end
            096:
            begin
                digit1 = 6; //less signigicant
                digit2 = 9;
                digit3 = 0;
            end
            097:
            begin
                digit1 = 7; //less signigicant
                digit2 = 9;
                digit3 = 0;
            end
            098:
            begin
                digit1 = 8; //less signigicant
                digit2 = 9;
                digit3 = 0;
            end
            099:
            begin
                digit1 = 9; //less signigicant
                digit2 = 9;
                digit3 = 0;
            end
            100:
            begin
                digit1 = 0; //less signigicant
                digit2 = 0;
                digit3 = 1;
            end

            default:
            begin
                digit1 = 14; // 0xE
                digit2 = 14;
                digit3 = 14;
            end
        endcase
    end
endmodule