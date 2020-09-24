#! /bin/bash

# Download network backend
if [ -d "network/gem5_astra" ]
then
    echo "You have already downloaded gem5"
elif [ -d "network/ns3" ]
then
    echo "You have already downloaded ns3"
else
    read -p "Enter the back-end you want to download, options are gem5 or ns3: " backend

    if [ "$backend" == "gem5" ]
    then
        git submodule add https://github.com/georgia-tech-synergy-lab/gem5_astra.git network/gem5_astra && \
            echo "gem5 has been successfully downloaded" || \
            echo "gem5 downloaded did not succeed!"
    elif [ "$backend" == "ns3" ]
    then
        git submodule add https://github.com/nsnam/ns-3-dev-git.git network/ns3 && \
            echo "ns3 has been successfully downloaded" || \
            echo "ns3 downloaded did not succeed!"
    fi
fi

# Download compute backend
if [ -d "compute/SCALE-Sim" ]
then
    echo "You have already downloaded SCALE-Sim"
else
    git submodule add https://github.com/ARM-software/SCALE-Sim.git compute/SCALE-Sim && \
    echo "SCALE-Sim has been successfully downloaded" || \
    echo "SCALE-Sim downloaded did not succeed!"
fi
