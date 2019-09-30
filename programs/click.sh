cd

git clone https://github.com/databricks/click.git ~/.click
cd ~/.click
git checkout bc3b95a7a3ba88f1dcc3bb0eed8239c03545de10
cargo build --release
echo "alias click=~/.click/target/release/click" >> ~/.bashrc
source ~/.bashrc

cd