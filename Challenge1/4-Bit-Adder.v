// LO ENCONTRÉ EN MI GMAIL. NO HE PROBADO SI ESTÁ COMPLETO

module full_adder(s,cout,a,b,cin);
  input a,b,cin;
  output s,cout;
  wire cout1,cout2,cout3,s1,s2,s3;
  
 assign s1=~a & ~b & cin |
      ~a & b & ~cin |
      a & b & cin | 
      a & ~b & ~cin;
 assign cout1= cin & b |
          a & b | 
          cin & a ;
  assign s2=~a & ~b & cout1 |
      ~a & b & ~cout1 |
      a & b & cout1 | 
      a & ~b & ~cout1;
 assign cout2= cout1 & b |
          a & b | 
          cout1 & a ;
  assign s3=~a & ~b & cout2 |
      ~a & b & ~cout2 |
      a & b & cout2 | 
      a & ~b & ~cout2;
 assign cout3= cout2 & b |
          a & b | 
          cout2 & a ;
  assign s=~a & ~b & cout3 |
      ~a & b & ~cout3 |
      a & b & cout3 | 
      a & ~b & ~cout3;
 assign cout= cout3 & b |
          a & b | 
          cout3 & a ;
 
endmodule
