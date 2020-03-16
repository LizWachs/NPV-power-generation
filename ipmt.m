function int_pmt = ipmt(rate, term, loan_amt)

%This function calculates the interest payments from a loan
% must know the monthly payment amount

%Step one: use interest rate to calculate the interest portion of first
%year's payments

%Step two: subtract interest payment from total payment to find principal
%payment

%Step three: subtract principal from total loan amount to calculate
%interest portion in next year

Annual_pmt = payper(rate, term, loan_amt);

for i = 1:term
    int_pmt(i) = rate*loan_amt;
    princ_portion(i) = Annual_pmt - int_pmt(i);
    loan_amt = loan_amt - princ_portion(i);
end


