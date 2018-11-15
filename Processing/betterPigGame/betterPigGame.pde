/*
This program simulates 100,000 games of PIG using a 4-roll strategy.
 It stores the outcomes of each game in an array.
 Finally, it prints out the average score for the 4-roll strategy
 for the 100,000 games.
 */
int numRolls = 4;

int numGames = 100000;

int[] gameScore = new int[numGames];

float sumAverage;

float average;


void setup() {
  for (int i = 0; i < numGames; i++) {
    int roll[] = new int[numRolls];
    for (int p = 0; p < roll.length; p++) {
      roll[p] = int(random(1, 7));
      if (roll[p] != 1) {
        gameScore[i] += roll[p];
      }
    }
    for (int o = 0; o < roll.length; o++) {
      if (roll[o] == 1) {
        gameScore[i] = 0;
      }
    }
    sumAverage += gameScore[i];
  }
  average = sumAverage/(numGames);
  println("Average score over", numGames ,"games", average);
}
