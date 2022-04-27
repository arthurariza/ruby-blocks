class DatabaseDriver
  def initialize(database, user, password)
    @database = database
    @user = user
    @password = password
    @connected = false
  end

  def connect
    # connects to database
    @connected = true
    puts "Connected to #{@database} as #{@user}."
  end

  def disconnect
    # disconnects from database
    puts 'Disconnected.'
  end

  def execute(sql)
    raise 'Not connected!' unless @connected

    puts "Executing #{sql}..."
    # executes SQL
  end

  def open
    connect

    return self unless block_given?

    begin
      yield(self)
    ensure
      disconnect
    end
  end
end

DatabaseDriver.new('my_database', 'admin', 'secret').open do |driver|
  driver.execute('SELECT * FROM ORDERS')
  driver.execute('SELECT * FROM USERS')
end
