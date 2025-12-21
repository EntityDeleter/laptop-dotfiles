superkill() {
    for proc in "$@"; do
        if ! pgrep "$proc" > /dev/null; then
            echo "take your meds grandpa, $proc died years ago"
            continue
        fi

        pkill "$proc"

        if ! pgrep "$proc" > /dev/null; then
            echo "$proc died with no complaint"
            continue
        fi

        sleep 1
        echo 3
        if ! pgrep "$proc" > /dev/null; then
            echo "$proc died with minimal complaint"
            continue
        fi

        sleep 1
        echo 2
        if ! pgrep "$proc" > /dev/null; then
            echo "$proc died while complaining about the economic state of the world"
            continue
        fi

        sleep 1
        echo 1
        if ! pgrep "$proc" > /dev/null; then
            echo "$proc died while protesting its own death"
            continue
        fi

        echo "$proc refuses to die, $proc will be annihilated :3"
        read -r -p "annihilate $proc? [y/N]: " ans
        case "${ans,,}" in
            y|yes)
                pkill -9 "$proc"
                ;;
            *)
                echo "$proc lives to see another day"
                ;;
        esac

        if ! pgrep "$proc" > /dev/null; then
            echo "all attempts were made to annihilate $proc, however $proc has plot armour and nothing could be done </3"
            continue
        fi
    done
}
