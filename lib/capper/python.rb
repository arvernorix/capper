_cset(:python, "python")

after "deploy:finalize_update" do
  run("ln -nfs #{latest_release} #{latest_release}/#{application}")
end
