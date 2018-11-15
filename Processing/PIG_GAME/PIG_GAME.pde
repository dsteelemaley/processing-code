/*
This program simulates 10,000 games of PIG using a 4-roll strategy.
 It stores the outcomes of each game in an array.
 Finally, it prints out the average score for the 4-roll strategy
 for the 10,000 games.
 
 */
int numgames = 100000;

int[] gamescore = new int[numgames];

float sumaverage;

float average;

void setup() {
  for (int i = 0; i < numgames; i++) {
    int roll = int(random(1, 7));
    int roll2 = int(random(1, 7));
    int roll3 = int(random(1, 7));
    int roll4 = int(random(1, 7));
    if (roll != 1) {
      gamescore[i] += roll;
      if (roll2 != 1) {
        gamescore[i] += roll2;
        if (roll3 != 1) {
          gamescore[i] += roll3;
          if (roll4 != 1) {
            gamescore[i] += roll4;
          } else {
            gamescore[i] = 0;
          }
        } else {
          gamescore[i] = 0;
        }
      } else {
        gamescore[i] = 0;
      }
    } else {
      gamescore[i] = 0;
    }
    sumaverage += gamescore[i];
  }
  average = sumaverage/(numgames);
  println("Average score over ",numgames," games =",average);
}
