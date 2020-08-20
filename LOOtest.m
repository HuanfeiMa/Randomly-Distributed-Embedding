function score=LOOtest(inputs,outputs)
    
error=zeros(1,length(inputs));
for i=1:length(inputs)
   inputs1=inputs;
   inputs1(:,i)=[];
   outputs1=outputs;
   outputs1(:,i)=[];
   prediction=myprediction_gp(inputs1,outputs1,inputs(:,i));
   error(i)=outputs(i)-prediction;
end
score=mean(abs(error));


