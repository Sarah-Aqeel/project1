@echo off
set /p response="Would you like to play rock paper scissors? (yes/no): "
if /i "%response%"=="yes" (
    python rock_paper_scissors.py
) else (
    echo That's too bad, maybe next time.
)
