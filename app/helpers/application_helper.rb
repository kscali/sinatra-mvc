module ApplicationHelper

  def people_form_method(person)
    if person.new_record?
      @method = "post"
    else
      @method = "put"
    end
    @method
  end

  def people_form_action(person)
    if person.new_record?
      @action = "/people/new"
    else
      @action = "/people/#{person.id}"
    end
    @action
  end

  def people_form_id(person)
    if person.new_record?
      @id = "new-person"
    else
      @id = "person-#{person.id}"
    end
    @id
  end

  def people_form_class(person)
    if person.new_record?
      @class = "new-person"
    else
      @class = "edit-person"
    end
    @class
  end

end
