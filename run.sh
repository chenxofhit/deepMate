#!/bin/bash

python deepMate.py biase 0   --umap_dim=10 --umap_neighbors=20 --manifold_learner=UMAP  --save_dir=biase-umap-deepMate --umap_min_dist=0.00  --visualize --n_clusters=4
python deepMate.py treutlein 0   --umap_dim=10 --umap_neighbors=20 --manifold_learner=UMAP  --save_dir=treutlein-umap-deepMate --umap_min_dist=0.00  --visualize --n_clusters=5
python deepMate.py pollen 0   --umap_dim=10 --umap_neighbors=20 --manifold_learner=UMAP  --save_dir=pollen-umap-deepMate --umap_min_dist=0.00  --visualize --n_clusters=11
python deepMate.py kolod 0   --umap_dim=10 --umap_neighbors=20 --manifold_learner=UMAP  --save_dir=kolod-umap-deepMate --umap_min_dist=0.00  --visualize --n_clusters=3
python deepMate.py zeisel 0   --umap_dim=10 --umap_neighbors=20 --manifold_learner=UMAP  --save_dir=zeisel-umap-deepMate --umap_min_dist=0.00  --visualize --n_clusters=9
python deepMate.py darmanis 0   --umap_dim=10 --umap_neighbors=20 --manifold_learner=UMAP  --save_dir=darmanis-umap-deepMate --umap_min_dist=0.00  --visualize --n_clusters=9
python deepMate.py tasic 0   --umap_dim=10 --umap_neighbors=20 --manifold_learner=UMAP  --save_dir=tasic-umap-deepMate --umap_min_dist=0.00  --visualize --n_clusters=18
python deepMate.py goolam 0   --umap_dim=10 --umap_neighbors=20 --manifold_learner=UMAP  --save_dir=goolam-umap-deepMate --umap_min_dist=0.00  --visualize --n_clusters=5
python deepMate.py li 0   --umap_dim=10 --umap_neighbors=20 --manifold_learner=UMAP  --save_dir=li-umap-deepMate --umap_min_dist=0.00  --visualize --n_clusters=9
python deepMate.py usoskin 0   --umap_dim=10 --umap_neighbors=20 --manifold_learner=UMAP  --save_dir=usoskin-umap-deepMate --umap_min_dist=0.00  --visualize --n_clusters=11