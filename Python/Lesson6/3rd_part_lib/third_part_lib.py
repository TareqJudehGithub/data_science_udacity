"""

"""

# It's a standard to list Python standard libraries before Python 3rd-party libraries
from datetime import datetime
import pytz

utc = pytz.utc  # >>> UTC
print(utc.zone)

ist = pytz.timezone('Asia/Kolkata') # >>> Asia/Kolkata


# today's date and time
now = datetime.now(tz=utc)
print(now)

# today's date and time in the provided zone ist
ist_now = now.astimezone(ist)
print(ist_now)


amsterdam = pytz.timezone('Europe/Amsterdam')


date = datetime.now()
print(date)
today = date.strftime('%x')
print(today)