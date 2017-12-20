Facter.add('QT_Type') do
  confine :osfamily => :windows
  setcode do
   begin
    value = nil
    Win32::Registry::HKEY_LOCAL_MACHINE.open('SOFTWARE\QT') do |regkey|
          value = regkey['Type']
        end
        value
    rescue
      nil
    end
  end
end  