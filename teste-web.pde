int[][] heatMap15 = { {255, 255, 240},
                     {255, 253, 53},
                     {249, 232, 53},
                     {239, 208, 53},
                     {229, 184, 63},
                     {229, 160, 63},
                     {219, 120, 63},
                     {205, 90, 73},
                     {195, 70, 74},
                     {180, 40, 70},
                     {140, 0, 120},
                     {120, 0, 120},
                     {100, 0, 120},
                     {80, 0, 120},
                     {60, 0, 100},
                     {40, 0, 80},
                     {30, 0, 60}};
/*
int[][] heatMap15 = { {255,255,255},	
				{255,200,200},
				{255,180,180},
				{255,160,160},
				{235,120,120},
				{215,20,30},
				{205,20,70},
				{195,0,80},
				{170,0,100},
				{140,0,120},
				{120,0,120},
				{100,0,120},
				{80,0,120},
				{60,0,100},
				{40,0,80},
				{30,0,60}};
*/
//chocolate
int[][] paleta5Cores ={
	{179,177,174},
	//{253,251,214},
	{217,200,152},
	{198,162,97},
	{154,106,57},
	{66,36,16}};

/*amarelo-roxo
int[][] paleta5Cores ={
{249, 232, 53},
{229, 184, 63},
{219, 120, 63},
{195, 70, 74},
{120, 0, 120}
};	
*/	
void setup() {
	size(600,400);
	background(255);
	//background(172, 205, 187);
	// Images must be in the "data" directory to load correctly
	int sizeMark = 8;//de preferencia um numero par
	int orient = 0;
	
	noStroke();
	fill(195,0,80,250);
	rect(30, 100, 7*sizeMark, sizeMark);
	fill(255,0,0,50);
	rect(30, 100+sizeMark, 1*sizeMark, sizeMark);
	int afast = 2;
	drawMarkBar(100, 200, 4, 0, sizeMark, orient);
	drawMarkBar(100+2*(sizeMark+afast), 200, 3, 1, sizeMark, orient);
	drawMarkBar(100+4*(sizeMark+afast), 200, 0, 1, sizeMark, orient);
	drawMarkBar(100+6*(sizeMark+afast), 200, 2, 2, sizeMark, orient);
	drawMarkBar(100+8*(sizeMark+afast), 200, 1, 0, sizeMark, orient);
	
	//heatMap15
	textSize(14);
	stroke(40);
	for(int i=0; i<15; i=i+1){
		fill(heatMap15[i][0],heatMap15[i][1],heatMap15[i][2]);
		rect(10+20*i,10, 20,20);
		fill(0, 60, 103);
		text(i, 13+20*i, 50); 
	}
	
	//paleta 5 cores
	textSize(14);
	stroke(40);
	for(int i=0; i<5; i=i+1){
		fill(paleta5Cores[i][0],paleta5Cores[i][1],paleta5Cores[i][2],230);
		rect(10+20*i,60, 20,20);
		//fill(0, 60, 103);
		//text(i, 13+20*i, 50);
	}

}
void drawMark(int xM, int yM, int gols_1, int gols_2, int sizeM, int orientM){		
	// desenha a marca com orientacao orientM
	int Ox, Oy;
	int cor1,cor2;
	if(orientM == 0){Ox=0; Oy=-1;}
	if(orientM == 1){Ox=1; Oy=0;}
	if(orientM == 2){Ox=0; Oy=1;}
	if(orientM == 3){Ox=-1; Oy=0;}
	stroke(140);
	strokeWeight(1);
	
	line(xM-int(sizeM/2)-1*Ox, yM-int(sizeM/2)-1*Ox, xM-int(sizeM/2)-1*abs(Oy) +abs(Oy)*(2*sizeM), yM-int(sizeM/2)-1*abs(Ox)+abs(Ox)*(2*sizeM));
	noStroke();
	if(Oy==-1){yM=yM-sizeM;}
	if(Ox==-1){xM=xM-sizeM;}
	if(gols_1>=1 && gols_1<4){cor1 =1;}
	
	if(gols_1>=1 && gols_1<4){cor1 =1;}
	if(gols_1>=4 && gols_1<7){cor1 =2;}
	if(gols_1>=7 && gols_1<10){cor1 =3;}
	if(gols_1>=10){cor1 =4;}
	if(gols_2>=1 && gols_2<4){cor2 =1;}
	if(gols_2>=4 && gols_2<7){cor2 =2;}
	if(gols_2>=7 && gols_2<10){cor2 =3;}
	if(gols_2>=10){cor2 =4;}
	
	if(gols_1>0){
		fill(paleta5Cores[cor1][0],paleta5Cores[cor1][1],paleta5Cores[cor1][2]);
		//fill(heatMap15[gols_1][0],heatMap15[gols_1][1],heatMap15[gols_1][2]);//paleta cor gols1
		for(int i=0; i<gols_1; i=i+1){
		ellipse(xM+Ox*(i*sizeM+1), yM+Oy*(i*sizeM+1), sizeM, sizeM);
	}}else{
		fill(paleta5Cores[0][0],paleta5Cores[0][1],paleta5Cores[0][2]);
		//fill(heatMap15[0][0],heatMap15[0][1],heatMap15[0][2]);//paleta cor gols1
		ellipse(xM-Ox*(sizeM+1), yM-Oy*(sizeM+1), sizeM, sizeM);
	}
	if(gols_2>0){
		fill(paleta5Cores[cor2][0],paleta5Cores[cor2][1],paleta5Cores[cor2][2]);
		//fill(heatMap15[gols_2][0],heatMap15[gols_2][1],heatMap15[gols_2][2]);//paleta cor gols2
		for(int i=0; i<gols_2; i=i+1){
		ellipse(xM+Ox*(i*sizeM+1)+abs(Oy)*sizeM, yM+Oy*(i*sizeM+1)+abs(Ox)*sizeM, sizeM, sizeM);
	}}else{
		fill(paleta5Cores[0][0],paleta5Cores[0][1],paleta5Cores[0][2]);
		//fill(heatMap15[0][0],heatMap15[0][1],heatMap15[0][2]);//paleta cor gols2
		ellipse(xM-Ox*(sizeM+1)+abs(Oy)*sizeM, yM-Oy*(sizeM+1)+abs(Ox)*sizeM, sizeM, sizeM);
	}
}

void drawMarkBar(int xM, int yM, int gols_1, int gols_2, int sizeM, int orientM){		
	// desenha a marca com orientacao orientM
	int Ox, Oy;
	int cor1,cor2;
	if(orientM == 0){Ox=0; Oy=-1;}
	if(orientM == 1){Ox=1; Oy=0;}
	if(orientM == 2){Ox=0; Oy=1;}
	if(orientM == 3){Ox=-1; Oy=0;}
	stroke(140);
	strokeWeight(1);
	
	line(xM-int(sizeM/2)-1*Ox, yM-int(sizeM/2)-1*Ox, xM-int(sizeM/2)-1*abs(Oy) +abs(Oy)*(2*sizeM), yM-int(sizeM/2)-1*abs(Ox)+abs(Ox)*(2*sizeM));
	noStroke();
	if(Oy==-1){yM=yM-sizeM;}
	if(Ox==-1){xM=xM-sizeM;}
	if(gols_1>=1 && gols_1<4){cor1 =1;}
	
	if(gols_1>=1 && gols_1<4){cor1 =1;}
	if(gols_1>=4 && gols_1<7){cor1 =2;}
	if(gols_1>=7 && gols_1<10){cor1 =3;}
	if(gols_1>=10){cor1 =4;}
	if(gols_2>=1 && gols_2<4){cor2 =1;}
	if(gols_2>=4 && gols_2<7){cor2 =2;}
	if(gols_2>=7 && gols_2<10){cor2 =3;}
	if(gols_2>=10){cor2 =4;}
	
	if(gols_1>0){
		fill(paleta5Cores[cor1][0],paleta5Cores[cor1][1],paleta5Cores[cor1][2]);
		//fill(heatMap15[gols_1][0],heatMap15[gols_1][1],heatMap15[gols_1][2]);//paleta cor gols1
		
		rect(xM+Ox*(1*sizeM+1), yM+Oy*(1*sizeM+1), sizeM, gols_1*sizeM);
	}else{
		fill(paleta5Cores[0][0],paleta5Cores[0][1],paleta5Cores[0][2]);
		//fill(heatMap15[0][0],heatMap15[0][1],heatMap15[0][2]);//paleta cor gols1
		rect(xM-Ox*(sizeM+1), yM-Oy*(sizeM+1), sizeM, sizeM);
	}
	if(gols_2>0){
		fill(paleta5Cores[cor2][0],paleta5Cores[cor2][1],paleta5Cores[cor2][2]);
		//fill(heatMap15[gols_2][0],heatMap15[gols_2][1],heatMap15[gols_2][2]);//paleta cor gols2
		
		rect(xM+Ox*(1*sizeM+1)+abs(Oy)*sizeM, yM+Oy*(1*sizeM+1)+abs(Ox)*sizeM, sizeM, gols_1*sizeM);
	}else{
		fill(paleta5Cores[0][0],paleta5Cores[0][1],paleta5Cores[0][2]);
		//fill(heatMap15[0][0],heatMap15[0][1],heatMap15[0][2]);//paleta cor gols2
		rect(xM-Ox*(sizeM+1)+abs(Oy)*sizeM, yM-Oy*(sizeM+1)+abs(Ox)*sizeM, sizeM, sizeM);
	}
}