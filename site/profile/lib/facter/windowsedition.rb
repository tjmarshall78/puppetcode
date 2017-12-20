Facter.add('customfact') do
  confine :osfamily => :windows
  setcode do
    'testvalue'
  end
end  