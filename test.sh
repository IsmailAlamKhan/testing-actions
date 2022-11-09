response=$(curl https://deto-events.com/v1/version)
echo "::set-output name=version::$(echo response from curl= $response)"