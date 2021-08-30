## Recommendation systems using Content Similarity, SVD and Funk SVD

This repo implements and compares some well-known algorithms for recommendation systems. I used [MovieLens 1M](https://grouplens.org/datasets/movielens/1m/) to showcase advantages as well as weaknesses of different algorithms.

### Some remarks
* We can use content similarity between the query movie and the rated movies to predict rating for the query movie. This method does not require any training, and gets RMSE of `1.07`.
* SVD for Collaborative Filtering is better than content-based recommendation. It reaches `0.95` RMSE but it requires to reasonably fill the missing entries on the rating matrix. Moreover, it is computationally infeasible for large number of users and movies.
* Funk SVD jointly learns embedding and bias for each of user-movie pair. The solutions are found by mini-batch Gradient Descent which is efficient event for large number of users and movies. Funk SVD reaches RMSE of `0.93`.

### How to run?
* Download data: `./download.sh`
* Open `notebook/recsys.ipynb`