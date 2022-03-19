from datetime import date, datetime

now = datetime.now().strftime( " %Y-%m-%d %H:%M:%S " )

print( 'Datetime now: {}'.format( now ) )