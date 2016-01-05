# -*- coding: utf-8 -*-

current_dir = File.dirname(File.expand_path(__FILE__))
# 入力データが保存されているディレクトリを指定
#data_dir = "#{current_dir}/Data/th1/"
#data_dir = "../Data/th1/"
#data_dir = "../Data/th2/"
#data_dir = "/th0_100000/"

commands = [ ]
# ここでランク数
#[20,35,50,75,100,150,200].each do |r|
#[1, 3, 5].each do |s|
#[4].each do |s|
%w(1min 3min 5min).each do |s|
#%w().each do |s|
  # 時間の粒度
  # 全て使うなら
  #%w(month).each do |t|
#  %w(PSS_model).each do |t|

    #データを保存するディレクトリの指定
    data_dir = "#{current_dir}/Data/#{s}/"

    cmd = "python Basic.py "
    cmd += "#{data_dir}"
    commands.push cmd
 # end
end

commands.each do |cmd|
  system cmd
end
