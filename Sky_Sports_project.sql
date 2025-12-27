use sky_sports;

# Write an sql query to show all the UNIQUE team names
select distinct team from overall_wc_stats;


# Write an SQL query to show name of team which has rank 1 from group 7 
select team from group_stage_team_stats g
where g.group = 7 and g.rank = 1;


# Write an sql query to show count of all teams 
select count(team) from group_stage_team_stats;


# Write an SQL query to show matches_played by each team
select team, sum(matches_played) from group_stage_team_stats
group by team;


# Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent
select team, round(((wins*100.0)/matches_played), 2) wins_percent from group_stage_team_stats;

SELECT 
    team, 
    round((SUM(wins) * 100.0 / SUM(matches_played)), 2) AS wins_percent
FROM 
    group_stage_team_stats
GROUP BY 
    team;


# Write an SQL query to show which team has maximum goals_scored and their count
select team, max(goals_scored) from group_stage_team_stats
group by team;


# Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team
select team, round((sum(draws)*100.0/sum(matches_played)), 2) from group_stage_team_stats
group by team;


# Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent
select team, round((sum(losses)*100.0/sum(matches_played)), 2) losses_percent from group_stage_team_stats
group by team
order by losses_percent;


# Write an SQL query to show the average goal_difference 
select avg(goal_difference) from group_stage_team_stats;


# Write an SQL query to show name of the team where points are 0 
select team from group_stage_team_stats
where points = 0;


# Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select * from group_stage_team_stats
where expected_goal_scored < exp_goal_conceded;


# Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * from group_stage_team_stats
where exp_goal_difference between -0.5 and 0.5;


# Write an SQL query to show team which has maximum number of players_used
select team, players_used from overall_wc_stats
where players_used = (select max(players_used) from overall_wc_stats);


# Write an SQL query to show each team name and avg_age in ascending order by avg_age
select team, avg_age from overall_wc_stats
order by avg_age;


# Write a SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow
select team, cards_yellow, cards_red from overall_wc_stats
where cards_red = 1
order by cards_yellow;


# Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 
select team, shots, shots_on_target, shots_on_target_pct from overall_wc_stats
where shots_on_target_pct < 30
order by shots_on_target_pct;


# Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500
select team, errors, touches from overall_wc_stats
where touches < 1500 and errors = 0;


# Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team, offsides from overall_wc_stats
where offsides not between 10 and 20;


# Write an SQL query to show number of teams each group has!
select g.group, count(g.team) from group_stage_team_stats g
group by g.group;


# Write an SQL query to show Australia belongs to which group
select g.team, g.group from group_stage_team_stats g
where g.team = 'Australia';


# Write an SQL query to show group, average wins by each group 
select g.group, avg(g.wins) from group_stage_team_stats g
group by g.group;


# Write an SQL query to show which team has equal number of goals_scored and goals_against 
select team from group_stage_team_stats
where goals_scored = goals_against;


# Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.
select g.group, sum(g.fouls) from group_stage_team_stats g
group by g.group
order by sum(g.fouls);

select g.group, sum(o.fouls) from group_stage_team_stats g join overall_wc_stats o
on g.team = o.team
group by g.group
order by sum(o.fouls);

select sum(fouls) from overall_wc_stats
where team in ('england', 'united states', 'wales');


# Write an SQL query to show total number of games for each group and arrange it in descending order by games. 
select g.group, sum(o.games) from group_stage_team_stats g join overall_wc_stats o
on g.team = o.team
group by g.group
order by sum(o.games) desc;


# Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 
select g.group, sum(o.players_used) from group_stage_team_stats g join overall_wc_stats o
on g.team = o.team
group by g.group
order by sum(o.players_used);


# Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.
select g.group, round(avg(o.passes_pct), 2) avg_passes_pct from group_stage_team_stats g join overall_wc_stats o
on g.team = o.team
group by g.group
order by avg(o.passes_pct);















