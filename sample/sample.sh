project="sample"

. /etc/profile.d/rbenvrc

git clone https://github.com/tcnksm/sample-rb-project $project
cd $project

# for v in $(cat /root/rubies.txt)
# do
#     rbenv global $v
#     bundle
#     rspec
# done

for v in 1.9.3-p392 2.0.0-p353
do
    rbenv global $v
    bundle
    rspec
done



cd ..
rm -fr $project
