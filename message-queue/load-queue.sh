#interacts with the queue
#loads some messages in it
curl -X PUT localhost:19000/memq/server/queues/keygen

for i in work-item-{0..99}; do
	curl -X POST localhost:19000/memq/server/queues/keygen/enqueue -d "$i"
done
