function Output=ConvNew(signal,kernel)
fliplr(kernel);
Output=zeros(1,length(signal)+length(kernel)-1);
for i=1:length(Output)
    for j=1:length(kernel)
       if (i-j+1)>=1&&((i-j+1)<=length(signal)) 
           %以1开始开始，两个数（包括两个端点）之间的长度（个数）为距离+1
           Output(i)=Output(i)+signal(i-j+1)*kernel(j)
        end
    end
end

end
signal=[1,2,3,4];
kernel=[1,2,3,4];
result=ConvNew(signal,kernel)
