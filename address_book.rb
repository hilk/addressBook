require_relative "person"

class AddressBook

  attr_accessor :people

  def initialize
    @people = []
  end

  def add_person (person)
    @people << person
  end

  def delete_person (full_name)
    @people.each do |p|
      if p.full_name == full_name
        @people.delete(p)
      end

    end

  end

  def print_people
    @people.each do |p|
      puts  p.id, p.full_name
    end
  end

  def search_person (full_name)
    @people.each do |p|
      if p.full_name.include? (full_name)
        puts "Aradığınız #{full_name} dizide bulunmaktadır. "
      else
        puts "Aradığınız #{full_name} dizide bulunamamaktadır. "

      end
    end

  end

end

address_book = AddressBook.new
p1 = Person.new(id: 1, full_name: "John Doe", phone_number: "222222222", city: "New York")

p2 = Person.new(id: 2, full_name: "Jane Doe", phone_number: "111111111", city: "Istanbul")

address_book.add_person(p1)
address_book.add_person(p2)

address_book.delete_person("Jane Doe")
address_book.search_person("Jane Doe")
address_book.print_people