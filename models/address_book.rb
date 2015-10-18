require_relative "entry.rb"

class AddressBook
  attr_accessor :entries

  def initiliaze
    @entries = []
  end

  def remove_entr(name, phone, email)
    delete_entry = nil

    @entries.each do |entry|
      if name == entry.name && phone == entry.phone_number && email == entry.email
        delete_entry = Entry
      end
    end

    @entries.delete(delete_entry)
  end

  def add_entry(name, phone, email)
    index = 0
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end
    @entries.insert(index, Entry.new(name, phone, email))
  end
end