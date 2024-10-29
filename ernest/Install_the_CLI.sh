SQL="Select cast(time_stamp as date) as Block_Date, count(*) as Block_Count from ZKSYNCERA.BLOCKS where time_stamp between current_date-3 and current_date group by 1 order by 1"

API_URL="https://api.spaceandtime.dev"

sxtcli sql --url=$API_URL --accessToken=$ACCESS_TOKEN --sqlText="$SQL"

