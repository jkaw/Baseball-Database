import java.awt.List;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;


public class generator {
	
	public generator(){
		
	}
	String[] Pitchers = new String[0];
	String[] stringArr = new String[0];	
	String[] Posplayers = new String[0];
	public static String generateString()
	{
	   
		char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < 20; i++) {
		    char c = chars[random.nextInt(chars.length)];
		    sb.append(c);
		}
		String output = sb.toString();
		return output;
	   
	}

	
	
public void thing(){
	String[] s = new String[2];
	String[] teams = new String[30];
	String[] t = new String[10];
	String[] f = new String[5];
	String[] pitch = new String[3];
	String space = ", ";
	String[] hand = new String[2];
	hand[0] = "Left";
	hand[1] = "Right";
	pitch[0] = "fastball";
	pitch[1] = "curveball";
	pitch[2] = "slider";
	teams[0] = "Arizona Diamondbacks";
	teams[1] = "Atlanta Braves";
	teams[2] = "Baltimore Orioles";
	teams[3] = "Boston Red Sox";
	teams[4] = "Chicago White Sox";
	teams[5] = "Chicago Cubs";
	teams[6] = "Cincinnati Reds";
	teams[7] = "Cleveland Indians";
	teams[8] = "Colorado Rockies";
	teams[9] = "Detroit Tigers";
	teams[10] = "Miami Marlins";
	teams[11] = "Houston Astros";
	teams[12] = "Kansas City Royals";
	teams[13] = "Los Angeles Angels";
	teams[14] = "Los Angeles Dodgers";
	teams[15] = "Milwaukee Brewers";
	teams[16] = "Minnesota Twins";
	teams[17] = "New York Mets";
	teams[18] = "New York Yankees";
	teams[19] = "Oakland Athletics";
	teams[20] = "Philadelphia Phillies";
	teams[21] = "Pittsburgh Pirates";
	teams[22] = "San Diego Padres";
	teams[23] = "San Francisco Giants";
	teams[24] = "Seattle Mariners";
	teams[25] = "St. Louis Cardinals";
	teams[26] = "Tampa Bay Rays";
	teams[27] = "Texas Rangers";
	teams[28] = "Toronto Blue Jays";
	teams[29] = "Washington Nationals";
	f[0] = "ball";
	f[1] = "strike";
	f[2] = "hit";
	f[3] = "out";
	f[4] = "rbi";
	t[0] = "P";
	t[1] = "C";
	t[2] = "1B";
	t[3] = "2B";
	t[4] = "3B";
	t[5] = "SS";
	t[6] = "LF";
	t[7] = "RF";
	t[8] = "CF";
	t[9] = "DH";
	s[0] = "Win";
	s[1] = "Loss";
	Random r = new Random();
	for(int i = 0; i < 200; i++){
		String t1 = teams[r.nextInt(30)];
		String t2 = teams[r.nextInt(30)];
	//pitch
		//System.out.println("INSERT INTO pitches Values(" + i + space + "'" +f[r.nextInt(5)] + "'" + space + r.nextInt(4) + space + r.nextInt(3) + space + r.nextInt(4) + space + "'" + pitch[r.nextInt(3)] + "'" + space + r.nextInt(110) + space + r.nextInt(101) + space + "'" + Pitchers[r.nextInt(Posplayers.length)] + "'" + space + r.nextInt(99) + space + "'" + t1 + "'" + space + "'" + Posplayers[r.nextInt(Posplayers.length)] + "'" + space + r.nextInt(99) + space + "'" + t2 + "'" + space + "'" + t1 + "'" + space + "'" + t2 + "'" + space + i + ");"); 
	//games
		//System.out.println("INSERT INTO Games VALUES(" + i + space + "date" + " " + "'" + (r.nextInt(10) + 2000) + "-" + (r.nextInt(12) + 1) + "-" + (1 + r.nextInt(28)) + "'" + space + "date" + " " + "'" + (r.nextInt(10) + 2000) + "-" + (1 + r.nextInt(12)) + "-" + (1 + r.nextInt(28)) + "'" + space + "'" + t1 + "'" + space + "'" + t2 + "'" + space + "'" + t1 + "');"); //games
	//players
		//System.out.println("INSERT INTO Player VALUES(" + "'" + stringArr[i] + "'" + space + r.nextInt(100) + space + "'" + teams[r.nextInt(30)] + "');");
	//Posplayer
		//System.out.println("INSERT INTO PosPlayer VALUES(" + "'" + hand[r.nextInt(2)] + "'" + space + "'" + t[r.nextInt(10)] + "'" + space + "'" + Posplayers[i] + "'" + space + r.nextInt(100) + space + "'" + teams[r.nextInt(30)] + "');");
	//Pitcher
		//System.out.println("INSERT INTO Pitcher VALUES(" + "'" + hand[r.nextInt(2)] + "'" + space + "'" + Pitchers[i] + "'" + space + "'" + teams[r.nextInt(30)] + "'" + space + r.nextInt(100) + ");");
	//teams
		//System.out.println("INSERT INTO TEAMS VALUES(" + "'" + generateString() + "'" + space + "'" + r.nextInt(80) + "-" + r.nextInt(80) + "'" + ");");
		System.out.println("INSERT INTO pitches Values(" + (20000 + i) + space + "'" +f[r.nextInt(5)] + "'" + space + r.nextInt(4) + space + r.nextInt(3) + space + r.nextInt(4) + space + "'" + pitch[r.nextInt(3)] + "'" + space + r.nextInt(110) + space + r.nextInt(101) + space + "'" + "Madison Bumgarner" + "'" + space + 30 + space + "'" + "San Francisco Giants" + "'" + space + "'" + "Adrian Gonzales" + "'" + space + 23 + space + "'" + "Los Angeles Dodgers" + "'" + space + "'" + t1 + "'" + space + "'" + t2 + "'" + space + (20000 +i) + ");"); 

	}
	
		}
public void function() throws IOException {
BufferedReader in = new BufferedReader(new FileReader("/Users/jaredwada/Documents/jwadap3/Players.txt"));
String str;

ArrayList<String> list = new ArrayList<String>();
while((str = in.readLine()) != null){
    list.add(str);
}

stringArr = list.toArray(new String[0]);
}



public void function2() throws IOException {
BufferedReader in = new BufferedReader(new FileReader("/Users/jaredwada/Documents/jwadap3/Pitchers.txt"));
String str;

ArrayList<String> list = new ArrayList<String>();
while((str = in.readLine()) != null){
    list.add(str);
}

Pitchers = list.toArray(new String[0]);
}

public void function3() throws IOException {
BufferedReader in = new BufferedReader(new FileReader("/Users/jaredwada/Documents/jwadap3/Posplayers.txt"));
String str;

ArrayList<String> list = new ArrayList<String>();
while((str = in.readLine()) != null){
    list.add(str);
}

Posplayers = list.toArray(new String[0]);
}


public static void main(String[] args) throws IOException{
	generator anything = new generator();
	anything.function();
	anything.function2();
	anything.function3();
	//System.out.println(anything.stringArr[0]);
	anything.thing();
	
	
	
}
}
