"C:\Program Files\1cv8\8.3.24.1467\bin\1cv8c" /N"CI" /P"CI" /TestManager /Execute "C:\VA Test\vanessa-automation\vanessa-automation.epf" /IBConnectionString "File=""C:\Users\sedakova_i\Documents\InfoBase1"";" /C"StartFeaturePlayer;QuietInstallVanessaExt;VAParams=C:\Users\sedakova_i\Documents\GitHub\TestQA\VAParams\VAParams.json"
allure generate --clean "C:\VA Test\allure-report" && allure open
