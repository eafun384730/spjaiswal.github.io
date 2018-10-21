
function final_output2 = proposed_algorithm(y1,y2,sun_spia_spia,org_sai_small,or_input_spia,org_sai_big);

[org_m, org_n]=size(or_input_spia);   

p=8;                  %%    WINDOW SIZE FOR LS 128*128 to 256*256
 for S=3:p:126    
     for W=3:p:126
         
     % for 4*4 type even-even type
sumA=0;
sumB=0;
sumC=0;
sumD=0;
sumAB=0;
sumAC=0;
sumAD=0;
sumBC=0;
sumBD=0;
sumCD=0;
sumY2A=0;
sumY2B=0;
sumY2C=0; 
sumY2D=0;

   % for 6*6 type even-odd type 
sumG=0;
sumH=0;
sumE=0;
sumF=0;
sumI=0;
sumJ=0;
sumGH=0;
sumGE=0;
sumGF=0;
sumGI=0;
sumGJ=0;
sumHE=0;
sumHF=0;
sumHI=0;
sumHJ=0;
sumEF=0;
sumEI=0;
sumEJ=0;
sumFI=0;
sumFJ=0;
sumIJ=0;
sumY2G=0;
sumY2H=0;
sumY2E=0;
sumY2F=0;
sumY2I=0;
sumY2J=0;

% for 6*6 type odd-even type
 sume=0;
 sumh=0;
 sumg=0;
 sumf=0;
 sumk=0;
 summ=0;
 sumgh=0;
 sumge=0;
 sumgf=0;
 sumgk=0;
 sumgm=0;
 sumhe=0;
 sumhf=0;
 sumhk=0;
 sumhm=0;
 sumef=0;
 sumek=0;
 sumem=0;
 sumfk=0;
 sumfm=0;
 sumkm=0;
sumY2g=0;
sumY2h=0;
sumY2e=0;
sumY2f=0;
sumY2k=0;
sumY2m=0;

                 for i=S:10+S                          %%%% OVERLAPPING
                      for j=W:10+W                     %%%% OVERLAPPING
         
         if  i < 127 && j < 127
             
        % for 4*4 matrix............... .........................   
        
%        calculation A
         A=(y2(i-1,j-1))^2;
         sumA=sumA+A;
        
     
         %calculation B
        
         B=(y2(i-1,j+1))^2;
        sumB=sumB+B;
         
         %calculation C
         
         C=(y2(i+1,j-1))^2; 
        sumC=sumC+C;
        
         %calculation D
          
         D=(y2(i+1,j+1))^2;
        sumD=sumD+D;
     
         %calculation of AB
         
       
         AB=y2(i-1,j-1)*y2(i-1,j+1);
        sumAB=sumAB+AB;
         
        
     
         %cACLULATION OF AC
         
         
         AC=y2(i-1,j-1)*y2(i+1,j-1);
        sumAC=sumAC+AC;
        
        
         
           
            %calculation of AD
   
       
         AD=y2(i-1,j-1)*y2(i+1,j+1);
        sumAD=sumAD+AD;
        
        
          %calculation of BC
          
         
              BC=y2(i-1,j+1)*y2(i+1,j-1);
              sumBC=sumBC+BC;
         
        
          %calculation of BD
         
              BD=y2(i-1,j+1)*y2(i+1,j+1);
              sumBD=sumBD+BD;
        
          
         %calculation of  CD
         
              CD=y2(i+1,j-1)*y2(i+1,j+1);
              sumCD=sumCD+CD;
              
              
   
        %calculation of Y2A
    
         Y2A=y2(i-1,j-1)*y2(i,j);
        
        sumY2A=sumY2A+Y2A;
        
        
    %calculatioon of Y2B
 
   
         Y2B=y2(i-1,j+1)*y2(i,j);
        sumY2B=sumY2B+Y2B;
        
     
     %calculation Y2C
        
         Y2C=y2(i+1,j-1)*y2(i,j);
        sumY2C=sumY2C+Y2C;
         
      %calculation Y2D
        
         Y2D=y2(i+1,j+1)*y2(i,j);
        sumY2D=sumY2D+Y2D;
        
              
     % for 6*6 matrix of even-odd type.................................
      
         % calculation uf E
         E=(y2(i-1,j))^2;
         sumE=sumE+E;
         
         %calculation of F
         
        F=(y2(i+1,j))^2;
         sumF=sumF+F;
         
        %calculation of G
        
          G=(y2(i-1,j-2))^2;
         sumG=sumG+G;
          
          %calculation of H    
        
          H=(y2(i+1,j-2))^2;
         sumH=sumH+H;
          
          %calculation of I
        
          I=(y2(i-1,j+2))^2;
         sumI=sumI+I;
          
          %calculation of J
        
          J=(y2(i+1,j+2))^2;
         sumJ=sumJ+J;
          
        
          %calculation of GH
         
         GH=y2(i-1,j-2)*y2(i+1,j-2);
         sumGH=sumGH+GH;
         
           %calculation of GE
         
         GE=y2(i-1,j-2)*y2(i-1,j);
         sumGE=sumGE+GE;
         
           %calculation of GF
         
         GF=y2(i-1,j-2)*y2(i+1,j);
         sumGF=sumGF+GF;
         
           %calculation of GI
         
         GI=y2(i-1,j-2)*y2(i-1,j+2);
         sumGI=sumGI+GI;
         
           %calculation of GJ
         
         GJ=y2(i-1,j-2)*y2(i+1,j+2);
         sumGJ=sumGJ+GJ;
         
           %calculation of HE
         
         HE=y2(i+1,j-2)*y2(i-1,j);
         sumHE=sumHE+HE;
         
         
         %calculation of HF
         
         HF=y2(i+1,j-2)*y2(i+1,j);
         sumHF=sumHF+HF;
         
         %calculation of HI
         
         HI=y2(i+1,j-2)*y2(i-1,j+2);
         sumHI=sumHI+HI;
         
         %calculation of HJ
         
         HJ=y2(i+1,j-2)*y2(i+1,j+2);
         sumHJ=sumHJ+HJ;
         
         %calculation of EF
         
        EF=y2(i-1,j)*y2(i+1,j);
         sumEF=sumEF+EF;
         
         %calculation of EI
         
        EI=y2(i-1,j)*y2(i-1,j+2);
         sumEI=sumEI+EI;
        
         %calculation of EJ
         
        EJ=y2(i-1,j)*y2(i+1,j+2);
         sumEJ=sumEJ+EJ;
         
         
         %calculation of FI
         
         FI=y2(i+1,j)*y2(i-1,j+2);
         sumFI=sumFI+FI;
        
         %calculation of FJ
         
         FJ=y2(i+1,j)*y2(i+1,j+2);
         sumFJ=sumFJ+FJ;
         
         
         %calculation of IJ
         
         IJ=y2(i-1,j+2)*y2(i+1,j+2);
         sumIJ=sumIJ+IJ;         
      
         
        %calculation of Y2G
        Y2G=y2(i,j)*y2(i-1,j-2);
        sumY2G=sumY2G+Y2G;
        
        %calculation of Y2H
        Y2H=y2(i,j)*y2(i+1,j-2);
        sumY2H=sumY2H+Y2H;
        
        %calculation of Y2E
        Y2E=y2(i,j)*y2(i-1,j);
        sumY2E=sumY2E+Y2E;
         
        %calculation of Y2F
        Y2F=y2(i,j)*y2(i+1,j);
        sumY2F=sumY2F+Y2F;
        
        %calculation of Y2I
        Y2I=y2(i,j)*y2(i-1,j+2);
        sumY2I=sumY2I+Y2I;
        
        %calculation of Y2J
        Y2J=y2(i,j)*y2(i+1,j+2);
        sumY2J=sumY2J+Y2J;
         
         
         
         % calculation of odd-even type matrix coefficients.............
         
         % calculation of e
         e=(y2(i,j-1))^2;
         sume=sume+e;
         
         %calculation of f
         
         f=(y2(i,j+1))^2;
         sumf=sumf+f;
         
         %calculation of g
        
          g=(y2(i-2,j-1))^2;
          sumg=sumg+g;
          
          %calculation of h    
        
          h=(y2(i-2,j+1))^2;
          sumh=sumh+h;
          
          %calculation of k
        
          k=(y2(i+2,j-1))^2;
          sumk=sumk+k;
          
          %calculation of m
        
          m=(y2(i+2,j+1))^2;
          summ=summ+m;
          
        
          %calculation of gh
         
          gh=y2(i-2,j-1)*y2(i-2,j+1);
          sumgh=sumgh+gh;
         
          %calculation of ge
         
           ge=y2(i-2,j-1)*y2(i,j-1);
           sumge=sumge+ge;
         
          %calculation of gf
         
           gf=y2(i-2,j-1)*y2(i,j+1);
           sumgf=sumgf+gf;
         
           %calculation of gk
         
           gk=y2(i-2,j-1)*y2(i+2,j-1);
           sumgk=sumgk+gk;
          
           %calculation of gm
         
           gm=y2(i-2,j-1)*y2(i+2,j+1);
           sumgm=sumgm+gm;
         
           %calculation of he
         
           he=y2(i-2,j+1)*y2(i,j-1);
           sumhe=sumhe+he;
         
         
           %calculation of hf
         
           hf=y2(i-2,j+1)*y2(i,j+1);
           sumhf=sumhf+hf;
         
           %calculation of hk
         
           hk=y2(i-2,j+1)*y2(i+2,j-1);
           sumhk=sumhk+hk;
         
           %calculation of hm
         
           hm=y2(i-2,j+1)*y2(i+2,j+1);
           sumhm=sumhm+hm;
         
           %calculation of ef
         
           ef=y2(i,j-1)*y2(i,j+1);
           sumef=sumef+ef;
         
           %calculation of ek
         
           ek=y2(i,j-1)*y2(i+2,j-1);
           sumek=sumek+ek;
        
           %calculation of em
         
           em=y2(i,j-1)*y2(i+2,j+1);
           sumem=sumem+em;
         
         
           %calculation of fk
         
           fk=y2(i,j+1)*y2(i+2,j-1);
           sumfk=sumfk+fk;
        
           %calculation of fm
         
           fm=y2(i,j+1)*y2(i+2,j+1);
           sumfm=sumfm+fm;
         
         
           %calculation of km
         
           km=y2(i+2,j-1)*y2(i+2,j+1);
           sumkm=sumkm+km;              
               
           %calculation of Y2g
           Y2g=y2(i,j)*y2(i-2,j-1);
           sumY2g=sumY2g+Y2g;
        
           %calculation of Y2h
           Y2h=y2(i,j)*y2(i-2,j+1);
           sumY2h=sumY2h+Y2h;
        
           %calculation of Y2e
           Y2e=y2(i,j)*y2(i,j-1);
           sumY2e=sumY2e+Y2e;
         
           %calculation of Y2f
           Y2f=y2(i,j)*y2(i,j+1);
           sumY2f=sumY2f+Y2f;
        
           %calculation of Y2k
           Y2k=y2(i,j)*y2(i+2,j-1);
           sumY2k=sumY2k+Y2k;
        
           %calculation of Y2m
           Y2m=y2(i,j)*y2(i+2,j+1);
           sumY2m=sumY2m+Y2m;
     
         end
         
   
                      end
                      
end
 

%calculation of invrse of 6*6 matrix of even-odd type.................

lr=[sumY2g;sumY2k;sumY2e;sumY2f;sumY2h;sumY2m];
LR=[sumg sumgk sumge sumgf sumgh sumgm...
    ;sumgk sumk sumek sumfk sumhk sumkm...
    ;sumge sumek sume sumef sumhe sumem... 
    ;sumgf sumfk sumef sumf sumhf sumfm...
    ;sumgh sumhk sumhe sumhf sumh sumhm...
    ;sumgm sumkm sumem sumfm sumhm summ];

lrLR=inv(LR)*lr;

%calculation of 6*6 matrix odd-even type

UD=[sumG sumGH sumGE sumGF sumGI sumGJ
    ;sumGH sumH sumHE sumHF sumHI sumHJ
    ;sumGE sumHE sumE sumEF sumEI sumEJ
    ;sumGF sumHF sumEF sumF sumFI sumFJ
    ;sumGI sumHI sumEI sumFI sumI sumIJ
    ;sumGJ sumHJ sumEJ sumFJ sumIJ sumJ];
ud=[sumY2G;sumY2H;sumY2E;sumY2F;sumY2I;sumY2J];

udUD=inv(UD)*ud;

% calculation of 4*4 matrix even-even type

 q=[sumA sumAB sumAC sumAD;
    sumAB sumB sumBC sumBD;
    sumAC sumBC sumC sumCD;
    sumAD sumBD sumCD sumD
   ];
 w=[sumY2A;sumY2B;sumY2C;sumY2D];
 q1=inv(q);
 
 eve=q1*w;




 for i=S:p-1+S
    for j=W:p-1+W
    if  i< 127 & j< 127 
        
        %calculatio of even-even type
        
        sun_spia_spia(2*i,2*j)=sun_spia_spia(2*i-1,2*j-1)*eve(1)+sun_spia_spia(2*i-1,2*j+1)*eve(2)+sun_spia_spia(2*i+1,2*j-1)*eve(3)+sun_spia_spia(2*i+1,2*j+1)*eve(4);
        
        %even-odd calculation
        
        sun_spia_spia(2*i,2*j-1)=sun_spia_spia(2*i-1,2*j-3)*udUD(1)+sun_spia_spia(2*i+1,2*j-3)*udUD(2)+sun_spia_spia(2*i-1,2*j-1)*udUD(3)+sun_spia_spia(2*i+1,2*j-1)*udUD(4)...
            +sun_spia_spia(2*i-1,2*j+1)*udUD(5)+sun_spia_spia(2*i+1,2*j+1)*udUD(6);
        
        %odd-even calculations
        
         sun_spia_spia(2*i-1,2*j)=sun_spia_spia(2*i-3,2*j-1)*lrLR(1)+sun_spia_spia(2*i-3,2*j+1)*lrLR(2)+sun_spia_spia(2*i-1,2*j-1)*lrLR(3)+sun_spia_spia(2*i-1,2*j+1)*lrLR(4)...
         +sun_spia_spia(2*i+1,2*j-1)*lrLR(5)+sun_spia_spia(2*i+1,2*j+1)*lrLR(6);
     
    end
    end
    
 end
 
          
     end
   
 end
  
 
 %% INTERPOLATING 128*128 TO 256*256 BY BILINEAR.................................

   [a1 b1]=size(sun_spia_spia);  
   pp1=imresize(y2,2,'bilinear'); 
   
 %% adding the corners from downsampled image of check images...............
   
 sun_spia_spia(1:4,:)=pp1(1:4,:);
 sun_spia_spia(253:256,:)=pp1(253:256,:);
 sun_spia_spia(:,1:4)=pp1(:,1:4);
 sun_spia_spia(:,253:256)=pp1(:,253:256);


%% CALCULATION OF PSNR BY LS FROM 128*128 TO 256*256.........................................
 
error_spia1=imsubtract(sun_spia_spia,y1); 
 se=(sum(error_spia1(:).^2));
 mse_spia_no_use=se/(a1*b1);
 psnr_spia_no_use=10*log10(1/mse_spia_no_use);

 
 

%%:::::::::::::::::::::::: SAI  ::::::::::::::::::::::::::::::::::::::::::

%% CALCULATION OF PSNR BY SAI FROM 128*128 TO 256*256.........................................

error_sai1=imsubtract(y1,org_sai_small);
se=(sum(error_sai1(:).^2));
mse_sai_no_use=se/(a1*b1);
psnr_sai_no_use=10*log10(1/mse_sai_no_use) ;
  
  
  
  
%% CALCULATING MEAN SQUARE ERROR OF BLOCK WISE OF ERROR_SAI AND ERROR_SPIA..........................
  
 gg=0;
mag_err_spia1(1:256)=0;
mag_err_sai1(1:256)=0;

for AA=1:16:256
  for BB=1:16:256
      
       gg=gg+1;
      
     for i=AA:AA+15
        for j=BB:BB+15
      
      mag_err_spia1(gg)=mag_err_spia1(gg)+(error_spia1(i,j))^2;
      mag_err_sai1(gg)=mag_err_sai1(gg)+(error_sai1(i,j))^2;
      
      
        end
     end
      mag_err_spia1(gg)= mag_err_spia1(gg)/(16*16);     
       mag_err_sai1(gg)= mag_err_sai1(gg)/(16*16);
  end
end


%% comparing the blocks of error image of both method of size 256*256.......................................

 tt_check=im2double(zeros(256,256));
 tt_check1=im2double(zeros(256,256));
 kkk=0;
 spia_imple=0;
 sai_imple=0;   
 gg=0;
 chek_sai=0;
 chek_spia=0;
 
for AA=1:16:256
  for BB=1:16:256
      
       gg=gg+1;
      
     if mag_err_sai1(gg) > mag_err_spia1(gg)
        spia_imple=spia_imple+1;                   % counting of number of times LS apllied
        
        tt_check(AA:AA+15,BB:BB+15)=error_spia1(AA:AA+15,BB:BB+15);
      
     else
         
           sai_imple= sai_imple+1;             % counting of number of times nedi apllied
           
           tt_check(AA:AA+15,BB:BB+15)=error_sai1(AA:AA+15,BB:BB+15);
     end
end
end

%%  FINDING PSNR OF ERROR IMAGE OF SIZE 256*256 BY COMBINATION OF ERROR_SAI AND ERROR_SPIA


 se11=(sum(tt_check(:).^2));
 mse_check_no_use= se11/(256*256);
 psnr_check_no_thresh= 10*log10(1/mse_check_no_use);
 

 %% total number of impelmentation of LS based AND SAI in this image..
  spia_imple = spia_imple  ;                 
  sai_imple = sai_imple  ;  




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%    FOR 256*256 TO 512*512  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%    FOR 256*256 TO 512*512  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 org_spia=im2double(zeros(org_m,org_n));       %% PREDICTED HR BY SPIA
 y1_spia=im2double(zeros(256,256));            %% GIVEN LR 
 y1_spia(:,:)=y1(:,:);

  
  for i=1:org_m/2
      for j=1:org_n/2
          org_spia(2*i-1,2*j-1)=y1(i,j);       % fillin odd rows n coloumn of interpolated image by spia
         
      end
  end


%% INTERPOLATION OF LR BY SPIA METHOD


for AA=3:16:254
    for BB=3:16:254

%      for 4*4 type even-even type
    
sumA=0;
sumB=0;
sumC=0;
sumD=0;
sumAB=0;
sumAC=0;
sumAD=0;
sumBC=0;
sumBD=0;
sumCD=0;
sumY1A=0;
sumY1B=0;
sumY1C=0; 
sumY1D=0;

%    % for 6*6 type even-odd type 
sumG=0;
sumH=0;
sumE=0;
sumF=0;
sumI=0;
sumJ=0;
sumGH=0;
sumGE=0;
sumGF=0;
sumGI=0;
sumGJ=0;
sumHE=0;
sumHF=0;
sumHI=0;
sumHJ=0;
sumEF=0;
sumEI=0;
sumEJ=0;
sumFI=0;
sumFJ=0;
sumIJ=0;
sumY1G=0;
sumY1H=0;
sumY1E=0;
sumY1F=0;
sumY1I=0;
sumY1J=0;

% % for 6*6 type odd-even type

 sume=0;
 sumh=0;
 sumg=0;
 sumf=0;
 sumk=0;
 summ=0;
 sumgh=0;
 sumge=0;
 sumgf=0;
 sumgk=0;
 sumgm=0;
 sumhe=0;
 sumhf=0;
 sumhk=0;
 sumhm=0;
 sumef=0;
 sumek=0;
 sumem=0;
 sumfk=0;
 sumfm=0;
 sumkm=0;
sumY1g=0;
sumY1h=0;
sumY1e=0;
sumY1f=0;
sumY1k=0;
sumY1m=0;

      for i=AA:AA+20
          for j=BB:BB+20
              
             
              if  i < 255 && j < 255
             
      % for 4*4 matrix............... ..........     
         
 %        calculation A

         A=(y1_spia(i-1,j-1))^2;
         sumA=sumA+A;
        
     
%          %calculation B
        
         B=(y1_spia(i-1,j+1))^2;
        sumB=sumB+B;
         
%          %calculation C
         
         C=(y1_spia(i+1,j-1))^2; 
        sumC=sumC+C;
        
%          %calculation D
          
         D=(y1_spia(i+1,j+1))^2;
        sumD=sumD+D;
     
%          %calculation of AB
         
       
         AB=y1_spia(i-1,j-1)*y1_spia(i-1,j+1);
        sumAB=sumAB+AB;
         
        
     
         %cACLULATION OF AC
         
         
         AC=y1_spia(i-1,j-1)*y1_spia(i+1,j-1);
        sumAC=sumAC+AC;
        
        
         
           
            %calculation of AD
   
       
         AD=y1_spia(i-1,j-1)*y1_spia(i+1,j+1);
        sumAD=sumAD+AD;
        
        
          %calculation of BC
          
         
              BC=y1_spia(i-1,j+1)*y1_spia(i+1,j-1);
              sumBC=sumBC+BC;
         
        
          %calculation of BD
         
              BD=y1_spia(i-1,j+1)*y1_spia(i+1,j+1);
              sumBD=sumBD+BD;
        
          
%          calculation of  CD
         
              CD=y1_spia(i+1,j-1)*y1_spia(i+1,j+1);
              sumCD=sumCD+CD;
              
              
   
       %   calculation of y1_spiaA
    
         Y1A=y1_spia(i-1,j-1)*y1_spia(i,j);
        
          sumY1A=sumY1A+Y1A;
        
        
   %   calculatioon of Y1B
 
   
         Y1B=y1_spia(i-1,j+1)*y1_spia(i,j);
        sumY1B=sumY1B+Y1B;
        
     
    %   calculation Y1C
        
         Y1C=y1_spia(i+1,j-1)*y1_spia(i,j);
        sumY1C=sumY1C+Y1C;
         
    %    calculation Y1D
        
         Y1D=y1_spia(i+1,j+1)*y1_spia(i,j);
        sumY1D=sumY1D+Y1D;
        
              
   %     for 6*6 matrix of even-odd type.................................
      
     %      calculation uf E
         E=(y1_spia(i-1,j))^2;
         sumE=sumE+E;
         
     %     calculation of F
         
        F=(y1_spia(i+1,j))^2;
         sumF=sumF+F;
         
      %    calculation of G
        
          G=(y1_spia(i-1,j-2))^2;
         sumG=sumG+G;
          
       %     calculation of H    
        
          H=(y1_spia(i+1,j-2))^2;
         sumH=sumH+H;
          
        %    calculation of I
        
          I=(y1_spia(i-1,j+2))^2;
         sumI=sumI+I;
          
        %    calculation of J
        
          J=(y1_spia(i+1,j+2))^2;
         sumJ=sumJ+J;
          
        
       %     calculation of GH
         
         GH=y1_spia(i-1,j-2)*y1_spia(i+1,j-2);
         sumGH=sumGH+GH;
         
        %     calculation of GE
         
         GE=y1_spia(i-1,j-2)*y1_spia(i-1,j);
         sumGE=sumGE+GE;
         
        %     calculation of GF
         
         GF=y1_spia(i-1,j-2)*y1_spia(i+1,j);
         sumGF=sumGF+GF;
         
        %     calculation of GI
         
         GI=y1_spia(i-1,j-2)*y1_spia(i-1,j+2);
         sumGI=sumGI+GI;
         
         %    calculation of GJ
         
         GJ=y1_spia(i-1,j-2)*y1_spia(i+1,j+2);
         sumGJ=sumGJ+GJ;
         
         %    calculation of HE
         
         HE=y1_spia(i+1,j-2)*y1_spia(i-1,j);
         sumHE=sumHE+HE;
         
         
        %   calculation of HF
         
         HF=y1_spia(i+1,j-2)*y1_spia(i+1,j);
         sumHF=sumHF+HF;
         
        %   calculation of HI
         
         HI=y1_spia(i+1,j-2)*y1_spia(i-1,j+2);
         sumHI=sumHI+HI;
         
        %   calculation of HJ
         
         HJ=y1_spia(i+1,j-2)*y1_spia(i+1,j+2);
         sumHJ=sumHJ+HJ;
         
        %   calculation of EF
         
        EF=y1_spia(i-1,j)*y1_spia(i+1,j);
         sumEF=sumEF+EF;
         
        %   calculation of EI
         
        EI=y1_spia(i-1,j)*y1_spia(i-1,j+2);
         sumEI=sumEI+EI;
        
        %   calculation of EJ
         
        EJ=y1_spia(i-1,j)*y1_spia(i+1,j+2);
         sumEJ=sumEJ+EJ;
         
         
        %   calculation of FI
         
        FI=y1_spia(i+1,j)*y1_spia(i-1,j+2);
         sumFI=sumFI+FI;
        
       %    calculation of FJ
         
        FJ=y1_spia(i+1,j)*y1_spia(i+1,j+2);
         sumFJ=sumFJ+FJ;
         
         
       %    calculation of IJ
         
        IJ=y1_spia(i-1,j+2)*y1_spia(i+1,j+2);
         sumIJ=sumIJ+IJ;         
      
         
       %   calculation of y1_spiaG
        Y1G=y1_spia(i,j)*y1_spia(i-1,j-2);
        sumY1G=sumY1G+Y1G;
        
       %   calculation of Y1H
        Y1H=y1_spia(i,j)*y1_spia(i+1,j-2);
        sumY1H=sumY1H+Y1H;
        
       %   calculation of Y1E
        Y1E=y1_spia(i,j)*y1_spia(i-1,j);
        sumY1E=sumY1E+Y1E;
         
       %   calculation of Y1F
        Y1F=y1_spia(i,j)*y1_spia(i+1,j);
        sumY1F=sumY1F+Y1F;
        
      %    calculation of Y1I
        Y1I=y1_spia(i,j)*y1_spia(i-1,j+2);
        sumY1I=sumY1I+Y1I;
        
      %    calculation of Y1J
        Y1J=y1_spia(i,j)*y1_spia(i+1,j+2);
        sumY1J=sumY1J+Y1J;
         
         
         
     %      calculation of odd-even type matrix coefficients.............
         
      %       calculation of e
         e=(y1_spia(i,j-1))^2;
         sume=sume+e;
         
      %     calculation of f
         
        f=(y1_spia(i,j+1))^2;
         sumf=sumf+f;
         
      %    calculation of g
        
          g=(y1_spia(i-2,j-1))^2;
         sumg=sumg+g;
          
      %      calculation of h    
        
          h=(y1_spia(i-2,j+1))^2;
         sumh=sumh+h;
          
        %    calculation of k
        
         k=(y1_spia(i+2,j-1))^2;
         sumk=sumk+k;
          
      %      calculation of m
        
          m=(y1_spia(i+2,j+1))^2;
         summ=summ+m;
          
        
      %      calculation of gh
         
         gh=y1_spia(i-2,j-1)*y1_spia(i-2,j+1);
         sumgh=sumgh+gh;
         
        %     calculation of ge
         
         ge=y1_spia(i-2,j-1)*y1_spia(i,j-1);
         sumge=sumge+ge;
         
      %       calculation of gf
         
         gf=y1_spia(i-2,j-1)*y1_spia(i,j+1);
         sumgf=sumgf+gf;
         
       %      calculation of gk
         
         gk=y1_spia(i-2,j-1)*y1_spia(i+2,j-1);
         sumgk=sumgk+gk;
         
     %        calculation of gm
         
         gm=y1_spia(i-2,j-1)*y1_spia(i+2,j+1);
         sumgm=sumgm+gm;
         
      %       calculation of he
         
         he=y1_spia(i-2,j+1)*y1_spia(i,j-1);
         sumhe=sumhe+he;
         
         
      %     calculation of hf
         
         hf=y1_spia(i-2,j+1)*y1_spia(i,j+1);
         sumhf=sumhf+hf;
         
      %     calculation of hk
         
         hk=y1_spia(i-2,j+1)*y1_spia(i+2,j-1);
         sumhk=sumhk+hk;
         
       %    calculation of hm
         
         hm=y1_spia(i-2,j+1)*y1_spia(i+2,j+1);
         sumhm=sumhm+hm;
         
      %     calculation of ef
         
        ef=y1_spia(i,j-1)*y1_spia(i,j+1);
         sumef=sumef+ef;
         
     %      calculation of ek
         
        ek=y1_spia(i,j-1)*y1_spia(i+2,j-1);
         sumek=sumek+ek;
        
      %     calculation of em
         
        em=y1_spia(i,j-1)*y1_spia(i+2,j+1);
         sumem=sumem+em;
         
         
     %      calculation of fk
         
        fk=y1_spia(i,j+1)*y1_spia(i+2,j-1);
         sumfk=sumfk+fk;
        
       %    calculation of fm
         
        fm=y1_spia(i,j+1)*y1_spia(i+2,j+1);
         sumfm=sumfm+fm;
         
         
     %      calculation of km
         
         km=y1_spia(i+2,j-1)*y1_spia(i+2,j+1);
         sumkm=sumkm+km;              
               
      %       calculation of y1_spiag
        Y1g=y1_spia(i,j)*y1_spia(i-2,j-1);
        sumY1g=sumY1g+Y1g;
        
      %    calculation of Y1h
        Y1h=y1_spia(i,j)*y1_spia(i-2,j+1);
        sumY1h=sumY1h+Y1h;
        
      %    calculation of Y1e
        Y1e=y1_spia(i,j)*y1_spia(i,j-1);
        sumY1e=sumY1e+Y1e;
         
     %     calculation of Y1f
        Y1f=y1_spia(i,j)*y1_spia(i,j+1);
        sumY1f=sumY1f+Y1f;
        
     %     calculation of Y1k
        Y1k=y1_spia(i,j)*y1_spia(i+2,j-1);
        sumY1k=sumY1k+Y1k;
        
       %   calculation of Y1m
        Y1m=y1_spia(i,j)*y1_spia(i+2,j+1);
             sumY1m=sumY1m+Y1m;
     
         
         
   
                      end
                      
          end
      end
     
%  calculation of invrse of 6*6 matrix of even-odd type.................

lr=[sumY1g;sumY1k;sumY1e;sumY1f;sumY1h;sumY1m];
LR=[sumg sumgk sumge sumgf sumgh sumgm...
    ;sumgk sumk sumek sumfk sumhk sumkm...
    ;sumge sumek sume sumef sumhe sumem... 
    ;sumgf sumfk sumef sumf sumhf sumfm...
    ;sumgh sumhk sumhe sumhf sumh sumhm...
    ;sumgm sumkm sumem sumfm sumhm summ];

lrLR=inv(LR)*lr;

%  calculation of 6*6 matrix odd-even type

UD=[sumG sumGH sumGE sumGF sumGI sumGJ
    sumGH sumH sumHE sumHF sumHI sumHJ
    sumGE sumHE sumE sumEF sumEI sumEJ
    sumGF sumHF sumEF sumF sumFI sumFJ
    sumGI sumHI sumEI sumFI sumI sumIJ
    sumGJ sumHJ sumEJ sumFJ sumIJ sumJ];
ud=[sumY1G;sumY1H;sumY1E;sumY1F;sumY1I;sumY1J];

udUD=inv(UD)*ud;

%  calculation of 4*4 matrix even-even type

 q=[sumA sumAB sumAC sumAD;sumAB sumB sumBC sumBD;sumAC sumBC sumC sumCD;sumAD sumBD sumCD sumD];
 w=[sumY1A;sumY1B;sumY1C;sumY1D];
 q1=inv(q);
 
 eve=q1*w;



 for i=AA:AA+15
       for j=BB:BB+15
           
           
             if  i < 255 && j < 255 
        
       %   calculatio of even-even type
        
       org_spia(2*i,2*j)=org_spia(2*i-1,2*j-1)*eve(1)+org_spia(2*i-1,2*j+1)*eve(2)+org_spia(2*i+1,2*j-1)*eve(3)+org_spia(2*i+1,2*j+1)*eve(4);
        
       %   even-odd calculation
        
       org_spia(2*i,2*j-1)=org_spia(2*i-1,2*j-3)*udUD(1)+org_spia(2*i+1,2*j-3)*udUD(2)+org_spia(2*i-1,2*j-1)*udUD(3)+org_spia(2*i+1,2*j-1)*udUD(4)...
            +org_spia(2*i-1,2*j+1)*udUD(5)+org_spia(2*i+1,2*j+1)*udUD(6);
        
       %   odd-even calculations
        
        org_spia(2*i-1,2*j)=org_spia(2*i-3,2*j-1)*lrLR(1)+org_spia(2*i-3,2*j+1)*lrLR(2)+org_spia(2*i-1,2*j-1)*lrLR(3)+org_spia(2*i-1,2*j+1)*lrLR(4)...
         +org_spia(2*i+1,2*j-1)*lrLR(5)+org_spia(2*i+1,2*j+1)*lrLR(6);
     
    end
    end
    

 end
 
  end
end         

 %% INTERPOLATING 256*256 TO 512*512 BY BILINEAR AND FILLING THE CORNERS OF HR_SPIA BY BILINEAR.................................
 
 check_spia=imresize(y1,2,'bilinear');

org_spia(1:4,:)=check_spia(1:4,:);
org_spia(509:512,:)=check_spia(509:512,:);
org_spia(:,1:4)=check_spia(:,1:4);
org_spia(:,509:512)=check_spia(:,509:512);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%PREDICTED HR BY SPIA THRESHOLD%%%%%%%%%%%%%%%%%

org_spia2=im2double(zeros(512,512));
org_spia2(:,:)=org_spia(:,:);


%% CROPPING FOR SPIA_HR AND CALCULATING PSNR OF SPIA::>>>>>>>>>>>>

k=imcrop(org_spia,[1 1 org_n-2 org_m-2]);
p=imcrop(or_input_spia,[1 1 org_n-2 org_m-2]);
[a_spia b_spia]=size(k);
error_image_spia=imsubtract(k , p);
error_image1=imsubtract(org_spia,or_input_spia);
se=(sum(error_image_spia(:).^2));
mse_spia=se/(a_spia*b_spia)  ; 
psnr_spia=10*log10(1/mse_spia);
 
  
 
%% NOW FOR SAI FOR CROPPING AND PSNR OF HRIMAGE.................................................

size(or_input_spia);
error_image_sai=imsubtract(org_sai_big,or_input_spia);
k=imcrop(org_sai_big,[1 1 org_n-2 org_m-2]);
p=imcrop(or_input_spia,[1 1 org_n-2 org_m-2]);
error_image_sai1=imsubtract(k,p);
se=(sum(error_image_sai1(:).^2));
mse_sai=se/(511*511);
psnr_sai=10*log10(1/mse_sai);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%PREDICTED HR BY SAI THRESHOLD%%%%%%%%%%%%%%%%%

 org_sai_big2=im2double(zeros(512,512));
 org_sai_big2(:,:)= org_sai_big(:,:);
 



%% now implementing the two methods wothout using threshold...................................
   
    spia_imple=0;
    sai_imple=0;
    gg=0;
   
   for AA=1:16:256
      for BB=1:16:256
      
         gg=gg+1;
      
     if mag_err_sai1(gg)< mag_err_spia1(gg)     
          org_spia(2*AA-1:2*AA-1+31,2*BB-1:2*BB-1+31)=0;
          sai_imple=sai_imple+1;       
     else
         
                spia_imple= spia_imple+1;                   % counting of number of times spia apllied
               org_sai_big(2*AA-1:2*AA-1+31,2*BB-1:2*BB-1+31)=0;   
            
     end
     
      end
   end
   
   

      
   final_output=im2double(zeros(512,512));    %%% FINAL OUTPUT BY SWITCHING...>>>>>>>>>>>>>
   
   for i=1:512
       for j=1:512
       final_output(i,j)=org_spia(i,j)+org_sai_big(i,j);
       end
   end
   
   
 %% CROOPING OF FINAL OUTPUT AND CALCULATING PSNR >>>>>>>>>>>>>>>>>>>>.....
 
k=imcrop(final_output,[1 1 org_n-2 org_m-2]);
[a_final1 b_final1]=size(k);
p=imcrop(or_input_spia,[1 1 org_n-2 org_m-2]);
%figure,imtool(k),title('proposed m
error_image_final1=imsubtract(k , p);
 se=(sum(error_image_final1(:).^2));
 mse_final1=se/(a_final1*b_final1);
 final_psnr=10*log10(1/mse_final1);


% ................................................................................................................... 




%% calculating the magnitude of error block wise 512*512..........................
%% AND NO. OF SPIA IMPLE AND SAI IMPLE IN SPIA_HR AND SAI_HR  
  
 gg=0;
mag_err_spia1_HR(1:256)=0;
mag_err_sai1_HR(1:256)=0;

for AA=1:32:512
  for BB=1:32:512
      
       gg=gg+1;
      
     for i=AA:AA+31
        for j=BB:BB+31
      
      mag_err_spia1_HR(gg)=mag_err_spia1_HR(gg)+(error_image1(i,j)).^2;
      mag_err_sai1_HR(gg)=mag_err_sai1_HR(gg)+(error_image_sai(i,j)).^2;
      
      
        end
     end
     
  end
end


%% comparing the blocks of error image of both method of size 512*512.......................................

 
 kkk=0;
   spia_imple_HR=0;
   sai_imple_HR=0;
   
 gg=0;
 uuu=0;
 ttt=0;
 ppp=0;
 mmm=0; 
 mag_err_sai_chek_correct1(1:256)=0;
 mag_err_sai_chek_correct2(1:256)=0;
 mag_err_spia_chek_correct1(1:256)=0;
 mag_err_spia_chek_correct2(1:256)=0;
 chek_sai_correct=0;
 chek_spia_correct=0;
 chek_spia_incorrect=0;
 chek_sai_incorrect=0;
 
for AA=1:32:512
  for BB=1:32:512
      
       gg=gg+1;
      
     if mag_err_sai1(gg) > mag_err_spia1(gg)
               spia_imple_HR=spia_imple_HR+1;                 % counting of number of times LS apllied
               
               if mag_err_sai1_HR(gg) > mag_err_spia1_HR(gg)
                chek_spia_correct=chek_spia_correct+1;
                ppp=ppp+1;
                mag_err_spia_chek_correct1(ppp)=mag_err_spia1(gg);
                  
               else
                   chek_spia_incorrect=chek_spia_incorrect+1;
                   mmm=mmm+1;
                   mag_err_spia_chek_correct2(mmm)=mag_err_spia1(gg);
               end
     else
         
           sai_imple_HR= sai_imple_HR+1;                    % counting of number of times nedi apllied
           if mag_err_sai1_HR(gg) < mag_err_spia1_HR(gg)
                chek_sai_correct=chek_sai_correct+1;
                ttt=ttt+1;
                mag_err_sai_chek_correct1(ttt)=mag_err_sai1(gg);
                
               else
                   chek_sai_incorrect=chek_sai_incorrect+1;
                   uuu=uuu+1;
                   mag_err_sai_chek_correct2(uuu)=mag_err_sai1(gg);
                   
           end
           
     end
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%555



%% now CALCULATING THE THRESHOLD ................
    
        
            mag_sai1=0;
            mag_sai2=0;
            
           for i=1:ttt
               mag_sai1= mag_sai1+mag_err_sai_chek_correct1(i);
           end
           
           for i=1:uuu
               mag_sai2= mag_sai2+mag_err_sai_chek_correct2(i);
           end
           
           avg_mag_sai=(mag_sai1+mag_sai2)/(ttt+uuu);
         
   
         mag_spia1=0;
            mag_spia2=0;
            
           for i=1:ppp
               mag_spia1= mag_spia1+mag_err_spia_chek_correct1(i);
           end
           
           for i=1:mmm
               mag_spia2= mag_spia2+mag_err_spia_chek_correct2(i);
           end
           
           avg_mag_spia=(mag_spia1+mag_spia2)/(ppp+mmm);
       
%% NOW IMPLEMENTING THE THRRESHOLDS >>>>>>>>>>>>>>>>>.


    kkkk=0;
    yyyy=0;
   
gg=0;
if spia_imple < sai_imple
    
gg=0;
kkkk=0;
yyyy=0;
kkkk1=0;
yyyy1=0;

     for AA=1:16:256
      for BB=1:16:256
      
         gg=gg+1;
      
     if mag_err_spia1(gg) < mag_err_sai1(gg)  
         
          if  mag_err_spia1(gg) < avg_mag_spia*1
              org_sai_big2(2*AA-1:2*AA-1+31,2*BB-1:2*BB-1+31)=0;
              yyyy=yyyy+1;
              tt_check1(AA:AA+15,BB:BB+15)=error_spia1(AA:AA+15,BB:BB+15);
          else
            org_spia2(2*AA-1:2*AA-1+31,2*BB-1:2*BB-1+31)=0;
            kkkk=kkkk+1;
            tt_check1(AA:AA+15,BB:BB+15)=error_sai1(AA:AA+15,BB:BB+15);
          end
                   
     else
         
            
               org_spia2(2*AA-1:2*AA-1+31,2*BB-1:2*BB-1+31)=0;   
              tt_check1(AA:AA+15,BB:BB+15)=error_sai1(AA:AA+15,BB:BB+15);
             kkkk1=kkkk1+1;
      end
     end
      end
     end


if spia_imple > sai_imple
gg=0;
kkkk=0;
yyyy=0;
kkkk1=0;
yyyy1=0;

     for AA=1:16:256
      for BB=1:16:256
      
         gg=gg+1;
      
     if mag_err_spia1(gg) > mag_err_sai1(gg)  
         
          if  mag_err_sai1(gg) < avg_mag_sai*1
              org_spia2(2*AA-1:2*AA-1+31,2*BB-1:2*BB-1+31)=0;
              tt_check1(AA:AA+15,BB:BB+15)=error_sai1(AA:AA+15,BB:BB+15);
              yyyy=yyyy+1;
          else
            org_sai_big2(2*AA-1:2*AA-1+31,2*BB-1:2*BB-1+31)=0;
            tt_check1(AA:AA+15,BB:BB+15)=error_spia1(AA:AA+15,BB:BB+15);
            kkkk=kkkk+1;
          end
                   
     else
         
                org_sai_big2(2*AA-1:2*AA-1+31,2*BB-1:2*BB-1+31)=0;
                tt_check1(AA:AA+15,BB:BB+15)=error_spia1(AA:AA+15,BB:BB+15);
                kkkk1=kkkk1+1;
      
      end
     end
      end
end
 
%%  NOW CALCULATING THE ERROR IMAGE (256*256) AFTER USING THRESHOLDS...>>>
      se_check=(sum(tt_check1(:).^2));
      mse_final_check=se_check/(256*256);
      psnr_chkk_threshold=10*log10(1/mse_final_check);
      
%%  FINAL OUTPUT AFTER USING THRESHOLDS>>>>>>>>>>>>>>>>>>

    final_output2=im2double(zeros(512,512));
   
   for i=1:512
       for j=1:512
       final_output2(i,j)=org_spia2(i,j)+org_sai_big2(i,j);
       end
   end

