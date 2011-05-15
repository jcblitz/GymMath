class GymMath

  AVAILABLE_PLATES = [45, 35, 25, 10, 5, 2.5]
  EMPTY_BAR_WEIGHT = 45

  def calc_plates_needed(target, bar_weight = EMPTY_BAR_WEIGHT)
    plates_needed = Array.new()
    current = bar_weight
    current_group_of_plates = 0
  
    while (current < target)
        if (add_plate?(target, current_group_of_plates, current))
          current += (AVAILABLE_PLATES[current_group_of_plates] * 2)
          plates_needed << AVAILABLE_PLATES[current_group_of_plates]
        else
          current_group_of_plates += 1
        end
        if (current <= 0 || current < AVAILABLE_PLATES.last)
          break
        end
      end
      plates_needed
  end
  
  def add_plate?(target, current_group_of_plates, current)
    (target - ((AVAILABLE_PLATES[current_group_of_plates] * 2) + current)) >= 0 
  end

end