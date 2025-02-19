function plan = buildfile
    import matlab.buildtool.tasks.*
    
    plan = buildplan(localfunctions);
    
    plan("clean") = CleanTask;
    plan("check") = CodeIssuesTask;
    plan("test") = TestTask;

    plan("check").Dependencies = "clean";
    plan("test").Dependencies = "clean";

    plan.DefaultTasks = ["check", "test"];
end
