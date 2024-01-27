# installation instruction can be found
# https://container-registry.oracle.com/ords/f?p=113:4:13406972935626:::4:P4_REPOSITORY,AI_REPOSITORY,AI_REPOSITORY_NAME,P4_REPOSITORY_NAME,P4_EULA_ID,P4_BUSINESS_AREA_ID:1863,1863,Oracle%20Database%20Free,Oracle%20Database%20Free,1,0&cs=3QmhM7uHXwrNo0J_3uhUh7LUQSdb9Lhc28Sby0RvF83r5Obpzt6t9fdnlM4X5pVXBhWuuee95VPJ4xLMueb-ktA

# Modify for Oracle Free version

docker exec oracle-23c ./setPassword.sh foo

# copy to container
docker cp ch00/ a46cb192f40c:/home/oracle/ch00