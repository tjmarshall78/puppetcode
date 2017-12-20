Facter.add('customfact') do
  confine :osfamily => :windows
  setcode do
    value = nil
    Win32::Registry::HKEY_LOCAL_MACHINE.open('SOFTWARE\QT') do |regkey|
          value = regkey['Type']
        end
        value
  end
end  