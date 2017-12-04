%Inclass 22
%GB comments
1 100
2 100
overall 100

%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
%results. 

figure; hold on;
ku = 0.1
for kb = 0:0.05:8;
    polycoeff = [1 -kb 1 -ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts)==0);
    plot(kb*ones(length(rts),1),rts,'r.');
end
hold off;
xlabel('k_b');
ylabel('fixed point');
set(gca,'FontSize',22)
%in this case when the binding rate of the factor is higher than a certain
%number or lower than another, the regulation can not be initiated.

figure; hold on;
ku = 0.1
for kb = 0:0.05:8;
    polycoeff = [1 -kb 0 0 1 -ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts)==0);
    plot(kb*ones(length(rts),1),rts,'r.');
end
hold off;
xlabel('k_b');
ylabel('fixed point');
set(gca,'FontSize',22)

figure; hold on;
ku = 0.1
for kb = 0:0.05:8;
    polycoeff = [1 -kb 0 0 0 0 0 0 1 -ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts)==0);
    plot(kb*ones(length(rts),1),rts,'r.');
end
hold off;
xlabel('k_b');
ylabel('fixed point');
set(gca,'FontSize',22)
%for these two condition there is only a lower condition for the regulation
%to be initiated properly.

% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene. 

figure; hold on;
ku = 2
for kb = 0:0.05:8;
    polycoeff = [1 -kb 1 -ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts)==0);
    plot(kb*ones(length(rts),1),rts,'r.');
end
hold off;
xlabel('k_b');
ylabel('fixed point');
set(gca,'FontSize',22)
