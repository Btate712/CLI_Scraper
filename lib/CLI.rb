class CLI
  @@inventory #array of inventoryItem objects

  def initialize
    @@exit = false

    welcome_message
    load_inventory
    scrape_current_prices
    while !@@exit
      clear_screen
      display_inventory
      display_options
      choice = get_input
      execute_option(choice)
      sleep 1
    end
    goodbye_message
  end

  def welcome_message
    puts "Welcome to CLI Scraper Inventory System"
  end

  def load_inventory
    # Loads inventory from file storage
  end

  def scrape_current_prices
    # Scrapes current prices from Etsy page
  end

  def display_inventory
    # Display inventory in the following format
    # Item number  Item Description                   Retail price      Quantity    Total Retail Value
    # -----------  -------------------------------    ------------      --------    ------------------
    # 1            Widget                             5.00              3           15.00
    # 2            Gadget                             2.35              7           16.45
    #              Total                                                            31.45

    puts "Temporary Inventory:"
    puts "Item number  Item Description                   Retail price      Quantity    Total Retail Value"
    puts "-----------  -------------------------------    ------------      --------    ------------------"
    #Fake Data - final version will iterate through @@inventory and display info from inventoryItem objects
    puts "1            Widget                             5.00              3           15.00"
    puts "2            Gadget                             2.35              7           16.45"
    puts "                                                                              ------------"
    puts "             Total                                                            31.45"
  end

  def display_options
    # Options are Buy, Sell, and Exit
    puts "Would you like to buy, sell, or exit?"
  end

  def get_input
    gets.strip.downcase
  end

  def execute_option(choice)
    if choice == "buy"
      puts "Hurry up and buy!" # placeholder - this will eventually allow the user to add a quantity of items to the inventory
    elsif choice == "sell"
      puts "Sell it all!" # placeholder - this will eventually allow the user to remove a quantity of items to the inventory
    elsif choice == "exit"
      @@exit = true
    else
      puts "Invalid selection.  Please try again."
      choice = get_input
      execute_option(choice)
    end
  end

  def goodbye_message
    puts "Thank you, come again."
  end

  def clear_screen
    system("cls") # Works for Windows Machines
    system("clear") # Works for Mac / Unix Machines
  end
end

CLI.new
