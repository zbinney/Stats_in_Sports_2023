#This code loads the Lahman and tidyverse package, but installs either one first 
# IF AND ONLY IF you don't already have it installed

pacman::p_load(Lahman, tidyverse)

# Show Teams data in environment pane
data(Teams)

### Exploring the Data
# Print first 6 rows of data
head(Teams)

# Show "structure" of data - including dimensions (rows and columns), variables, and variable types
str(Teams)

# Provide a summary of each variable in the data frame
summary(Teams)


# Create a new data frame with just the 2022 MLB season
teams_2022 <- Teams %>% # Take the Teams data frame, THEN
  filter(yearID == 2022) # Filter to only rows where the yearID variable, which indicates season, equals 2022

head(teams_2022)

# Print (but not create) a new data frame with just a few variables
teams_2022 %>% # Take the teams_2022 data frame from above, THEN
  select(yearID, teamID, W, L, R:H) %>%  # Select only columns for year, team, wins, losses, runs, at-bats, and hits, THEN
  head() # Print the first 6 rows of the result

# Print (but not create) a new data frame with just a few variables
teams_2022 %>% # Take the teams_2022 data frame from above, THEN
  select(yearID, teamID, W:L, R:HR, SO) %>%  # Select a few columns, THEN
  arrange(desc(SO)) # Sort the data frame by number of triples


teams_2022 %>% # Take the 2022 team data, THEN
  select(yearID, teamID, R:HR) %>% # Choose just a subset of columns, THEN
  mutate(power = case_when(HR < 200 ~ "Learn to Bunt", # "Learn to bunt" if they hit under 200 HRs, or
                           HR < 250 ~ "Meh",           # "Meh" if they hit from 200-274 HRs, or
                           TRUE ~ "Mashin' Taters!"))  # "Mashin' Taters!" if they hit 275+ HRs


Teams %>% # Take the teams data, THEN
  filter(yearID %in% c(1990:1999)) %>%  # Get only the years 1960-2022, THEN
  # (We could've used >= and <=, but this is more compact. Can you interpret this code?)
  
  group_by(yearID) %>% # For every year...
  
  # Create a new variable that is the sum of HRs for each group indicated above, in this case each year
  summarize(Wins = sum(W)) 

teams_2022 %>% # Take the 2022 team data 
  ggplot(aes(x = R)) + # Feed it to ggplot, and set the X "aesthetic" to be runs (that is, make the x-axis be runs)
  # Notice this line ends with a `+`, not a `%>%`. This is because we are "adding" layers to the plot
  
  geom_histogram(binwidth = 50,   # A "geom" is a "layer" you add to the plot. 
                 fill = "blue") + # It's roughly equivalent to the graph type you want to make.
  # For a histogram you can manually specify the width of the bins you want as we did here, 
  # or the number of bins with e.g. bins = 10.
  # You can also set the color with `fill=`.
  # You may have more than one layer (e.g. put down scatterplot points, then overlay a line).
  geom_freqpoly(color = "red", binwidth = 50) +
  
  labs(x = "Runs", # Change the x-axis label
       y = "Number of Teams", # Change y-axis label
       title = "Distribution of Runs Scored by MLB Teams in 2022") # Add an overall BRIEF but DESCRIPTIVE title to the chart



# Create dataset of teams from 2001-2022 only, excluding pandemic year
teams_21c <- Teams %>% # Take Teams data
  filter(yearID >= 2001, yearID <= 2022, yearID != 2020) %>% # Only use team data from 2001-2022
  
  mutate(rundiff = R - RA) # Create a new variable for run differential

# Create scatterplot  
ggplot(data = teams_21c, 
       aes(x = rundiff, y = W)) + # Set the x "aesthetic" to be wins (that is, plot wins on the x-axis) 
  # Set the y "aesthetic" to be rundiff (that is, plot rundiff on the y-axis)
  
  geom_point() + # Make our first layer a scatterplot using geom_point
  
  geom_smooth() + # Add a second layer of a smoothed line of best fit on top of the scatterplot
  
  labs(title = "Run Differential vs. Wins in MLB, 2001-22", # Add brief, descriptive title
       x = "Run Differential", y = "Wins") # Make better x and y axis labels



teams_2022 %>% # Take 2022 data
  
  ggplot(aes(x = lgID, y = SB)) + # Set the x "aesthetic" to League (you'll see why we put lgID on the "x-axis" when you run it)
  # Set the y "aesthetic" to steals (that is, plot SB on the y-axis)
  
  geom_boxplot() + # Add a boxplot layer first
  
  geom_jitter(height = 0) + # Then add a second layer: a "jittered" scatterplot using geom_jitter
  # Jittering adds a small amount of random noise to each point.
  # To see why, try replacing this line with `geom_point()` instead.
  # `height = 0` means no *vertical* jitter.
  
  
  labs(title = "Steals by League in MLB, 2022", # Add brief, descriptive title
       x = "League", y = "Steals") # Make better x and y axis labels
