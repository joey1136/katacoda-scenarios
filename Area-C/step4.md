

In the last step, we have learnt different log table stored in the Mysql database.
In this step, we will learn how to create dashboard in Grafana using those log data.

# Introduction to Grafana Dashboard & Panel

In the Grafana, you can create a new dashboard in the left navigation bar or on main page.

![dashboard_1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-C/images/main_dashboard.png?raw=true)

In your dashboard, you can create a panel or a row.

![dashboard_2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-C/images/dashboard_1.PNG?raw=true)

If you select "Add an empty Panel"
You will be redirect to a edit page.

![dashboard_3](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-C/images/panel_1.PNG?raw=true)

There is six main session in this page you need to know:

* `visualized panel (lime)` - this is the review of your panel, you may change it into table view to check whether what data you get from the query.
* `panel type (green)` - you can select the type of this panel. 
* `Control panel (yellow)` - you may select Query, Transform, Alert in this panel.
* `Datasource (pink)` - you may change the datasource of you query. In our case, we have two main datasource which is Mysql and Wordpress Database.
![dashboard_4](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-C/images/fail_choose%20datasource.PNG?raw=true)
* `Query Session (red)` - you may change your query in this session, you can click "Edit SQL" and change it into a sql input.
* `Panel Option (skyblue)` - you may change the detail of your panel in this session, for example Panel title, axis name, etc..


# Example on creating user failed login time series graph

Grafana's panel can centralized and visualized your log data in a human-friendly way.
This example will teach you how to create a time series graph.

This is an example log on the Wordpress database.
The way to determine whether the log is a login failed log is to check the message column, if message column contain "Failed to login", we can know that it is a login failed log.

![graph_1]()

In our "Query Session", we can insert our query and check the query output in "visualized panel".

In the time series panel, it need a time and a number of record in that time.
Our SQL statement is like this
`SELECT
  $__timeGroupAlias(date,1m),
  count(*) AS "number"
FROM wp_simple_history
WHERE
  $__timeFilter(date)
AND message LIKE 'Failed to login%' 
GROUP BY 1
ORDER BY $__timeGroup(date,1m)
`

* `$__timeGroupAlias(date,1m)` - it use the 'date' column in the table and separate it into 1 minutes interval, you may change the time interval such as 1h.
* `count(*) AS 'number'` - it count the number of row which fulfill the query.
* `FROM wp_simple_history` - it state the table "wp_simple_history" of the query.
* `AND message LIKE "Failed to login%"` - it is a statement state that we only want to query log if it is login failed.
* `ORDER BY $__timeGroup(date,1m)` - you should also change the last line if you want to change the time interval in the second line.
`Note: Other query setting in this statement expect the above five cannot changed due to the panel setting, otherwize the panel will not show correctly.`

After save, you may see that you panel have been successfully setup in the dashboard, you can change the time interval of the log data such as Last 5 minutes, Last 15 minutes.

![graph_2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-C/images/dashboard_time%20range.PNG?raw=true)

You may also export your dashboard into JSON format clicking the share button in the top of the dashboard.

![graph_3](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-C/images/dashboard_export.PNG?raw=true)