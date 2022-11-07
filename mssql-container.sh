if [ $# -eq 0 ]
  then
    echo Starting mssql on port 1433
    sudo docker run \
        -e "ACCEPT_EULA=Y" \
        -e "SA_PASSWORD=!234Qwer" \
        -p 1433:1433 \
        --hostname sql1 \
        --name sql-server-2022 \
        -d \
        mcr.microsoft.com/mssql/server:2022-latest
        echo "Server=127.0.0.1,1433;Database=Master;User Id=SA;Password=!234Qwer"  | xclip -selection c
  else
    echo Starting mssql on port $1
    sudo docker run \
        -e "ACCEPT_EULA=Y" \
        -e "SA_PASSWORD=!234Qwer" \
        -p $1:1433 \
        --hostname sql1 \
        --name sql-server-2022 \
        -d \
        mcr.microsoft.com/mssql/server:2022-latest
    echo "Server=127.0.0.1,"$1";Database=Master;User Id=SA;Password=!234Qwer" | xclip -selection c
fi

echo connection string was copied to clipboard
