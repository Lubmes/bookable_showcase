ActsAsBookable::TimeUtils.class_eval do
    def self.interval_in_schedule?(schedule, interval_start, interval_end)
      # Check if interval_start and interval_end falls within any occurrence
      return false if(!time_in_schedule?(schedule,interval_start) || !time_in_schedule?(schedule,interval_end))
      # Check if both interval_start and interval_end falls within the SAME occurrence
      between = schedule.occurrences_between(interval_start, interval_end,{})
      contains = false
      between.each do |oc|
        oc_end = oc + schedule.duration
        contains = true if (time_in_interval?(interval_start,oc,oc_end) && time_in_interval?(interval_end,oc,oc_end))
        break if contains
      end
      contains
    end
end
