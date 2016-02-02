@echo off
set /p env="请输入需要构建的环境[sit/uat/tags]:"

if "%env%" == "sit" (
  if exist sit.result (
    rmdir /s /q sit.result
  )
MD sit.result

CALL %cd%\sit\CreditScoringDBE\sit.CreditScoringDBE.build.bat
COPY %cd%\sit\CreditScoringDBE\CreditScoringDBE\target\sit.CreditScoringDBE.*.zip %cd%\sit.result
COPY %cd%\sit\CreditScoringDBE\sit.CreditScoringDBE.log %cd%\sit.result

CALL %cd%\sit\pcs_db\sit.pcs_db.build.bat
COPY %cd%\sit\pcs_db\pcs_db\target\sit.pcs_db.*.zip %cd%\sit.result
COPY %cd%\sit\pcs_db\sit.pcs_db.log %cd%\sit.result

CALL %cd%\sit\pcs_in\sit.pcs_in.build.bat
COPY %cd%\sit\pcs_in\pcs_in\target\sit.pcs_in.*.zip %cd%\sit.result
COPY %cd%\sit\pcs_in\pcs_in\target\sit.pcs_in.*.war %cd%\sit.result
COPY %cd%\sit\pcs_in\sit.pcs_in.log %cd%\sit.result

CALL %cd%\sit\pcs_in_query\sit.pcs_in_query.build.bat
COPY %cd%\sit\pcs_in_query\pcs_in_query\target\sit.pcs_in_query.*.zip %cd%\sit.result
COPY %cd%\sit\pcs_in_query\pcs_in_query\target\sit.pcs_in_query.*.war %cd%\sit.result
COPY %cd%\sit\pcs_in_query\sit.pcs_in_query.log %cd%\sit.result

CALL %cd%\sit\pcs_out_mq\sit.pcs_out_mq.build.bat
COPY %cd%\sit\pcs_out_mq\pcs_out_mq\target\sit.pcs_out_mq.*.zip %cd%\sit.result
COPY %cd%\sit\pcs_out_mq\pcs_out_mq\target\sit.pcs_out_mq.*.war %cd%\sit.result
COPY %cd%\sit\pcs_out_mq\sit.pcs_out_mq.log %cd%\sit.result

CALL %cd%\sit\pcs_out_web\sit.pcs_out_web.build.bat
COPY %cd%\sit\pcs_out_web\pcs_out_web\target\sit.pcs_out_web.*.zip %cd%\sit.result
COPY %cd%\sit\pcs_out_web\pcs_out_web\target\sit.pcs_out_web.*.war %cd%\sit.result
COPY %cd%\sit\pcs_out_web\sit.pcs_out_web.log %cd%\sit.result

CALL %cd%\sit\CreditScoringDBG\sit.CreditScoringDBG.build.bat
COPY %cd%\sit\CreditScoringDBG\CreditScoringDBG\target\sit.CreditScoringDBG.*.zip %cd%\sit.result
COPY %cd%\sit\CreditScoringDBG\sit.CreditScoringDBG.log %cd%\sit.result

CALL %cd%\sit\pcs_score_server\sit.pcs_score_server.build.bat
COPY %cd%\sit\pcs_score_server\pcs_score_server\target\sit.pcs_score_server.*.zip %cd%\sit.result
COPY %cd%\sit\pcs_score_server\pcs_score_server\target\sit.pcs_score_server.*.war %cd%\sit.result
COPY %cd%\sit\pcs_score_server\sit.pcs_score_server.log %cd%\sit.result

CD %cd%\sit.result


for %%i in (*.log) do (type "%%i"&echo,)>"%%~ni.temp"
copy *.temp sit.result.txt
del /a /q *.temp *.log
)

if "%env%" == "uat" (
  if exist uat.result (
    rmdir /s /q uat.result
  )
MD uat.result

CALL %cd%\uat\CreditScoringDBE\uat.CreditScoringDBE.build.bat
COPY %cd%\uat\CreditScoringDBE\CreditScoringDBE\target\uat.CreditScoringDBE.*.zip %cd%\uat.result
COPY %cd%\uat\CreditScoringDBE\uat.CreditScoringDBE.log %cd%\uat.result

CALL %cd%\uat\pcs_db\uat.pcs_db.build.bat
COPY %cd%\uat\pcs_db\pcs_db\target\uat.pcs_db.*.zip %cd%\uat.result
COPY %cd%\uat\pcs_db\uat.pcs_db.log %cd%\uat.result

CALL %cd%\uat\pcs_in\uat.pcs_in.build.bat
COPY %cd%\uat\pcs_in\pcs_in\target\uat.pcs_in.*.zip %cd%\uat.result
COPY %cd%\uat\pcs_in\pcs_in\target\uat.pcs_in.*.war %cd%\uat.result
COPY %cd%\uat\pcs_in\uat.pcs_in.log %cd%\uat.result

CALL %cd%\uat\pcs_in_query\uat.pcs_in_query.build.bat
COPY %cd%\uat\pcs_in_query\pcs_in_query\target\uat.pcs_in_query.*.zip %cd%\uat.result
COPY %cd%\uat\pcs_in_query\pcs_in_query\target\uat.pcs_in_query.*.war %cd%\uat.result
COPY %cd%\uat\pcs_in_query\uat.pcs_in_query.log %cd%\uat.result

CALL %cd%\uat\pcs_out_mq\uat.pcs_out_mq.build.bat
COPY %cd%\uat\pcs_out_mq\pcs_out_mq\target\uat.pcs_out_mq.*.zip %cd%\uat.result
COPY %cd%\uat\pcs_out_mq\pcs_out_mq\target\uat.pcs_out_mq.*.war %cd%\uat.result
COPY %cd%\uat\pcs_out_mq\uat.pcs_out_mq.log %cd%\uat.result

CALL %cd%\uat\pcs_out_web\uat.pcs_out_web.build.bat
COPY %cd%\uat\pcs_out_web\pcs_out_web\target\uat.pcs_out_web.*.zip %cd%\uat.result
COPY %cd%\uat\pcs_out_web\pcs_out_web\target\uat.pcs_out_web.*.war %cd%\uat.result
COPY %cd%\uat\pcs_out_web\uat.pcs_out_web.log %cd%\uat.result

CALL %cd%\uat\CreditScoringDBG\uat.CreditScoringDBG.build.bat
COPY %cd%\uat\CreditScoringDBG\CreditScoringDBG\target\uat.CreditScoringDBG.*.zip %cd%\uat.result
COPY %cd%\uat\CreditScoringDBG\uat.CreditScoringDBG.log %cd%\uat.result

CALL %cd%\uat\pcs_score_server\uat.pcs_score_server.build.bat
COPY %cd%\uat\pcs_score_server\pcs_score_server\target\uat.pcs_score_server.*.zip %cd%\uat.result
COPY %cd%\uat\pcs_score_server\pcs_score_server\target\uat.pcs_score_server.*.war %cd%\uat.result
COPY %cd%\uat\pcs_score_server\uat.pcs_score_server.log %cd%\uat.result

CD %cd%\uat.result

for %%i in (*.log) do (type "%%i"&echo,)>"%%~ni.temp"
copy *.temp uat.result.txt
del /a /q *.temp *.log
)

if "%env%" == "tags" (
  if exist tags.result (
    rmdir /s /q tags.result
  )
MD tags.result

CALL %cd%\tags\CreditScoringDBE\tags.CreditScoringDBE.build.bat
COPY %cd%\tags\CreditScoringDBE\CreditScoringDBE\target\tags.CreditScoringDBE.*.zip %cd%\tags.result
COPY %cd%\tags\CreditScoringDBE\tags.CreditScoringDBE.log %cd%\tags.result

CALL %cd%\tags\pcs_db\tags.pcs_db.build.bat
COPY %cd%\tags\pcs_db\pcs_db\target\tags.pcs_db.*.zip %cd%\tags.result
COPY %cd%\tags\pcs_db\tags.pcs_db.log %cd%\tags.result

CALL %cd%\tags\pcs_in\tags.pcs_in.build.bat
COPY %cd%\tags\pcs_in\pcs_in\target\tags.pcs_in.*.zip %cd%\tags.result
COPY %cd%\tags\pcs_in\pcs_in\target\tags.pcs_in.*.war %cd%\tags.result
COPY %cd%\tags\pcs_in\tags.pcs_in.log %cd%\tags.result

CALL %cd%\tags\pcs_in_query\tags.pcs_in_query.build.bat
COPY %cd%\tags\pcs_in_query\pcs_in_query\target\tags.pcs_in_query.*.zip %cd%\tags.result
COPY %cd%\tags\pcs_in_query\pcs_in_query\target\tags.pcs_in_query.*.war %cd%\tags.result
COPY %cd%\tags\pcs_in_query\tags.pcs_in_query.log %cd%\tags.result

CALL %cd%\tags\pcs_out_mq\tags.pcs_out_mq.build.bat
COPY %cd%\tags\pcs_out_mq\pcs_out_mq\target\tags.pcs_out_mq.*.zip %cd%\tags.result
COPY %cd%\tags\pcs_out_mq\pcs_out_mq\target\tags.pcs_out_mq.*.war %cd%\tags.result
COPY %cd%\tags\pcs_out_mq\tags.pcs_out_mq.log %cd%\tags.result

CALL %cd%\tags\pcs_out_web\tags.pcs_out_web.build.bat
COPY %cd%\tags\pcs_out_web\pcs_out_web\target\tags.pcs_out_web.*.zip %cd%\tags.result
COPY %cd%\tags\pcs_out_web\pcs_out_web\target\tags.pcs_out_web.*.war %cd%\tags.result
COPY %cd%\tags\pcs_out_web\tags.pcs_out_web.log %cd%\tags.result

CALL %cd%\tags\CreditScoringDBG\tags.CreditScoringDBG.build.bat
COPY %cd%\tags\CreditScoringDBG\CreditScoringDBG\target\tags.CreditScoringDBG.*.zip %cd%\tags.result
COPY %cd%\tags\CreditScoringDBG\tags.CreditScoringDBG.log %cd%\tags.result

CALL %cd%\tags\pcs_score_server\tags.pcs_score_server.build.bat
COPY %cd%\tags\pcs_score_server\pcs_score_server\target\tags.pcs_score_server.*.zip %cd%\tags.result
COPY %cd%\tags\pcs_score_server\pcs_score_server\target\tags.pcs_score_server.*.war %cd%\tags.result
COPY %cd%\tags\pcs_score_server\tags.pcs_score_server.log %cd%\tags.result

CD %cd%\tags.result

for %%i in (*.log) do (type "%%i"&echo,)>"%%~ni.temp"
copy *.temp tags.result.txt
del /a /q *.temp *.log
)

exit
