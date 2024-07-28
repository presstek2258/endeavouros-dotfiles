# open webpages first
google-chrome-stable --app=https://learn.ontariotechu.ca &
google-chrome-stable --app=https://my.ontariotechu.ca/ &
google-chrome-stable --app=https://chat.openai.com &
google-chrome-stable --app=https://byjus.com/maths/z-score-table/ &

# open all the lecture pdfs
# ** opens all the files in the folder
cd /home/adrian/pCloudDrive/pCloud\ Desktop/School/year1_semester4/stat2010U/lecture_pdfs && google-chrome-stable ** &

# open nvim markdown notes in a new alacritty terminal
alacritty -e nvim /home/adrian/pCloudDrive/pCloud\ Desktop/School/year1_semester4/stat2010U/
