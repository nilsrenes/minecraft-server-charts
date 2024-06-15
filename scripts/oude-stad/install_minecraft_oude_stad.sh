helm upgrade oude-stad \
--set minecraftServer.eula="TRUE" \
--set minecraftServer.version="LATEST" \
--set minecraftServer.serviceType="LoadBalancer" \
--set minecraftServer.loadBalancerIP="192.168.2.54" \
--set minecraftServer.gameMode="survival" \
--set minecraftServer.defaultPermission="operator" \
--set minecraftServer.enableLanVisibility=true \
--set minecraftServer.maxThreads=0 \
--set minecraftServer.levelSeed=4349791831285849707 \
--set minecraftServer.difficulty=normal \
--set resources.requests.memory="1Gi" \
--set resources.requests.cpu="1000m" \
--set minecraftServer.viewDistance=8 \
--set minecraftServer.tickDistance=3 \
--set minecraftServer.levelName="oude-stad" \
--set minecraftServer.serverName="oude-stad" \
--set livenessProbe.initialDelaySeconds=60 \
--set readinessProbe.initialDelaySeconds=60 \
--set persistence.storageClassName="longhorn" \
--set persistence.labels.app="minecraft-oude-stad" \
--set persistence.labels.environment="production" \
--set persistence.dataDir.enabled=true \
--set persistence.dataDir.Size="10Gi" \
--set persistence.dataDir.existingClaim="minecraft-data-oude-stad" \
itzg/minecraft-bedrock -n minecraft
