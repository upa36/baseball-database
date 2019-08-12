# Baseball Database

## Instructions

### My First Database
In the initial commit to this project, you have been provided data about baseball player stats accumulated during games in which they participated. In a new branch called `first-database-answer`, you are tasked with creating a file called `creates.sql` that contains the SQL statements used to create a new database called `baseball` and all the tables needed to hold the data you have been given.

Notes on Data:
* Pitchers don't have hitting stats and hitters positions don't have pitching stats
* Pitchers have a positions of either SP (starting pitcher) or RP (relief pitcher), all other positions are hitters
* Throws and Bats refers to the handedness of the player. R means right handed, L means left handed and B means the player can use either hand


### Take Me Out to the Ball Game
In a new branch called `out-to-the-ball-game-answer`, continuing from Part 1 (My First Database), you are tasked with creating a file called `inserts.sql` that contains the SQL statements used to insert the data previously provided (`baseball.csv`) into the tables you created. You will also need to create a file called `queries.sql` that contains the SQL statements used to complete the tasks listed below. Your instructor has provided with the answers to Part 1 after grading your submission, note that your answers here need to be based on that table structure.

* Use the UPDATE command to change the Washington Nationals’ abbreviation from WSH to WAS
* Use the SELECT command to retrieve the start time and score for every game played on June 6th before 5pm
* Use the SELECT command to retrieve every team in the National League

### Pulling It All Together
In a new branch called `all-together-answer`, continuing from Part 2 (Take Me Out to the Ball Game), you are tasked with adding to the `queries.sql` files new SQL statements used to answer the questions posed below. You have been provided with the answers to Part 1 and Part 2, note that your answers here need to be based on those.

Note: ERA = earned runs / innings pitched. Pitchers attempt to allow as few earned runs during the innings they pitch, therefore the lower the ERA the better.

* List all the players for the Red Sox (Full Name, Position, Hits, Throws, Team Abbreviation)
* Who are the top 5 home run hitters for games played on June 6th? (Full Name, Position, Team Abbreviation, HomeRuns)
* Who are the top 5 pitchers in ERA for games played on June 6th who have at least 4 innings pitched in that game? (Full Name, Team Abbreviation, ERA)
* Which player hit the most doubles on June 6th? (Full Name, Position, Team Abbreviation, Doubles, Game Start Time, Home Team, Away Team)

## Provided Files

**baseball.csv** - a CSV file with baseball data

## Exercise Submission

You should submit your working changes in a pull request.
