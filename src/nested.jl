@doc """
	kpn( D::Int ) -> nodes, weights
	
Return the Konrod-Patterson `nodes` and `weights` of accuracy `D` as vectors.
"""->
function kpn( D::Int )
	@assert 1 <= D <= 25 "Accuracy must be between 1 and 25"
	return KPN_nodes[D], KPN_weights[D]
end

const KPN_nodes = Dict(
1 => [0.00000000000000e+00]
,
2 => [-1.73205080756888e+00; 0.00000000000000e+00; 1.73205080756888e+00]
,
3 => [-1.73205080756888e+00; 0.00000000000000e+00; 1.73205080756888e+00]
,
4 => [-4.18495601767273e+00; -1.73205080756888e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.73205080756888e+00; 4.18495601767273e+00]
,
5 => [-4.18495601767273e+00; -2.86127957605706e+00; -1.73205080756888e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.73205080756888e+00; 2.86127957605706e+00; 4.18495601767273e+00]
,
6 => [-4.18495601767273e+00; -2.86127957605706e+00; -1.73205080756888e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.73205080756888e+00; 2.86127957605706e+00; 4.18495601767273e+00]
,
7 => [-4.18495601767273e+00; -2.86127957605706e+00; -1.73205080756888e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.73205080756888e+00; 2.86127957605706e+00; 4.18495601767273e+00]
,
8 => [-4.18495601767273e+00; -2.86127957605706e+00; -1.73205080756888e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.73205080756888e+00; 2.86127957605706e+00; 4.18495601767273e+00]
,
9 => [-6.36339449433637e+00; -5.18701603991366e+00; -4.18495601767273e+00; -2.86127957605706e+00; -2.59608311504920e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.59608311504920e+00; 2.86127957605706e+00; 4.18495601767273e+00; 5.18701603991366e+00; 6.36339449433637e+00]
,
10 => [-6.36339449433637e+00; -5.18701603991366e+00; -4.18495601767273e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 4.18495601767273e+00; 5.18701603991366e+00; 6.36339449433637e+00]
,
11 => [-6.36339449433637e+00; -5.18701603991366e+00; -4.18495601767273e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 4.18495601767273e+00; 5.18701603991366e+00; 6.36339449433637e+00]
,
12 => [-6.36339449433637e+00; -5.18701603991366e+00; -4.18495601767273e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 4.18495601767273e+00; 5.18701603991366e+00; 6.36339449433637e+00]
,
13 => [-6.36339449433637e+00; -5.18701603991366e+00; -4.18495601767273e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 4.18495601767273e+00; 5.18701603991366e+00; 6.36339449433637e+00]
,
14 => [-6.36339449433637e+00; -5.18701603991366e+00; -4.18495601767273e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 4.18495601767273e+00; 5.18701603991366e+00; 6.36339449433637e+00]
,
15 => [-6.36339449433637e+00; -5.18701603991366e+00; -4.18495601767273e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; 0.00000000000000e+00; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 4.18495601767273e+00; 5.18701603991366e+00; 6.36339449433637e+00]
,
16 => [-9.01693978989030e+00; -7.98077179859056e+00; -7.12210670080462e+00; -6.36339449433637e+00; -5.18701603991366e+00; -4.18495601767273e+00; -3.63531851903728e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -2.23362606167694e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; -2.48992297579961e-01; 0.00000000000000e+00; 2.48992297579961e-01; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.23362606167694e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 3.63531851903728e+00; 4.18495601767273e+00; 5.18701603991366e+00; 6.36339449433637e+00; 7.12210670080462e+00; 7.98077179859056e+00; 9.01693978989030e+00]
,
17 => [-9.01693978989030e+00; -7.98077179859056e+00; -7.12210670080462e+00; -6.36339449433637e+00; -5.69817776848811e+00; -5.18701603991366e+00; -4.18495601767273e+00; -3.63531851903728e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -2.23362606167694e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; -2.48992297579961e-01; 0.00000000000000e+00; 2.48992297579961e-01; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.23362606167694e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 3.63531851903728e+00; 4.18495601767273e+00; 5.18701603991366e+00; 5.69817776848811e+00; 6.36339449433637e+00; 7.12210670080462e+00; 7.98077179859056e+00; 9.01693978989030e+00]
,
18 => [-9.01693978989030e+00; -7.98077179859056e+00; -7.12210670080462e+00; -6.36339449433637e+00; -5.69817776848811e+00; -5.18701603991366e+00; -4.73643308595230e+00; -4.18495601767273e+00; -3.63531851903728e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -2.23362606167694e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; -2.48992297579961e-01; 0.00000000000000e+00; 2.48992297579961e-01; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.23362606167694e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 3.63531851903728e+00; 4.18495601767273e+00; 4.73643308595230e+00; 5.18701603991366e+00; 5.69817776848811e+00; 6.36339449433637e+00; 7.12210670080462e+00; 7.98077179859056e+00; 9.01693978989030e+00]
,
19 => [-9.01693978989030e+00; -7.98077179859056e+00; -7.12210670080462e+00; -6.36339449433637e+00; -5.69817776848811e+00; -5.18701603991366e+00; -4.73643308595230e+00; -4.18495601767273e+00; -3.63531851903728e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -2.23362606167694e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; -2.48992297579961e-01; 0.00000000000000e+00; 2.48992297579961e-01; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.23362606167694e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 3.63531851903728e+00; 4.18495601767273e+00; 4.73643308595230e+00; 5.18701603991366e+00; 5.69817776848811e+00; 6.36339449433637e+00; 7.12210670080462e+00; 7.98077179859056e+00; 9.01693978989030e+00]
,
20 => [-9.01693978989030e+00; -7.98077179859056e+00; -7.12210670080462e+00; -6.36339449433637e+00; -5.69817776848811e+00; -5.18701603991366e+00; -4.73643308595230e+00; -4.18495601767273e+00; -3.63531851903728e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -2.23362606167694e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; -2.48992297579961e-01; 0.00000000000000e+00; 2.48992297579961e-01; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.23362606167694e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 3.63531851903728e+00; 4.18495601767273e+00; 4.73643308595230e+00; 5.18701603991366e+00; 5.69817776848811e+00; 6.36339449433637e+00; 7.12210670080462e+00; 7.98077179859056e+00; 9.01693978989030e+00]
,
21 => [-9.01693978989030e+00; -7.98077179859056e+00; -7.12210670080462e+00; -6.36339449433637e+00; -5.69817776848811e+00; -5.18701603991366e+00; -4.73643308595230e+00; -4.18495601767273e+00; -3.63531851903728e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -2.23362606167694e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; -2.48992297579961e-01; 0.00000000000000e+00; 2.48992297579961e-01; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.23362606167694e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 3.63531851903728e+00; 4.18495601767273e+00; 4.73643308595230e+00; 5.18701603991366e+00; 5.69817776848811e+00; 6.36339449433637e+00; 7.12210670080462e+00; 7.98077179859056e+00; 9.01693978989030e+00]
,
22 => [-9.01693978989030e+00; -7.98077179859056e+00; -7.12210670080462e+00; -6.36339449433637e+00; -5.69817776848811e+00; -5.18701603991366e+00; -4.73643308595230e+00; -4.18495601767273e+00; -3.63531851903728e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -2.23362606167694e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; -2.48992297579961e-01; 0.00000000000000e+00; 2.48992297579961e-01; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.23362606167694e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 3.63531851903728e+00; 4.18495601767273e+00; 4.73643308595230e+00; 5.18701603991366e+00; 5.69817776848811e+00; 6.36339449433637e+00; 7.12210670080462e+00; 7.98077179859056e+00; 9.01693978989030e+00]
,
23 => [-9.01693978989030e+00; -7.98077179859056e+00; -7.12210670080462e+00; -6.36339449433637e+00; -5.69817776848811e+00; -5.18701603991366e+00; -4.73643308595230e+00; -4.18495601767273e+00; -3.63531851903728e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -2.23362606167694e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; -2.48992297579961e-01; 0.00000000000000e+00; 2.48992297579961e-01; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.23362606167694e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 3.63531851903728e+00; 4.18495601767273e+00; 4.73643308595230e+00; 5.18701603991366e+00; 5.69817776848811e+00; 6.36339449433637e+00; 7.12210670080462e+00; 7.98077179859056e+00; 9.01693978989030e+00]
,
24 => [-9.01693978989030e+00; -7.98077179859056e+00; -7.12210670080462e+00; -6.36339449433637e+00; -5.69817776848811e+00; -5.18701603991366e+00; -4.73643308595230e+00; -4.18495601767273e+00; -3.63531851903728e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -2.23362606167694e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; -2.48992297579961e-01; 0.00000000000000e+00; 2.48992297579961e-01; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.23362606167694e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 3.63531851903728e+00; 4.18495601767273e+00; 4.73643308595230e+00; 5.18701603991366e+00; 5.69817776848811e+00; 6.36339449433637e+00; 7.12210670080462e+00; 7.98077179859056e+00; 9.01693978989030e+00]
,
25 => [-9.01693978989030e+00; -7.98077179859056e+00; -7.12210670080462e+00; -6.36339449433637e+00; -5.69817776848811e+00; -5.18701603991366e+00; -4.73643308595230e+00; -4.18495601767273e+00; -3.63531851903728e+00; -3.20533379449919e+00; -2.86127957605706e+00; -2.59608311504920e+00; -2.23362606167694e+00; -1.73205080756888e+00; -1.23042363402731e+00; -7.41095349994541e-01; -2.48992297579961e-01; 0.00000000000000e+00; 2.48992297579961e-01; 7.41095349994541e-01; 1.23042363402731e+00; 1.73205080756888e+00; 2.23362606167694e+00; 2.59608311504920e+00; 2.86127957605706e+00; 3.20533379449919e+00; 3.63531851903728e+00; 4.18495601767273e+00; 4.73643308595230e+00; 5.18701603991366e+00; 5.69817776848811e+00; 6.36339449433637e+00; 7.12210670080462e+00; 7.98077179859056e+00; 9.01693978989030e+00]
)


const KPN_weights = Dict(
1 => [1.00000000000000e+00]
,
2 => [1.66666666666667e-01; 6.66666666666667e-01; 1.66666666666667e-01]
,
3 => [1.66666666666667e-01; 6.66666666666667e-01; 1.66666666666667e-01]
,
4 => [6.95684158369140e-04; 1.38553274729749e-01; 1.31378606983136e-01; 4.58744868257492e-01; 1.31378606983136e-01; 1.38553274729749e-01; 6.95684158369140e-04]
,
5 => [9.42694575565175e-05; 7.99632547089353e-03; 9.48509485094851e-02; 2.70074329577938e-01; 2.53968253968254e-01; 2.70074329577938e-01; 9.48509485094851e-02; 7.99632547089353e-03; 9.42694575565175e-05]
,
6 => [9.42694575565176e-05; 7.99632547089353e-03; 9.48509485094851e-02; 2.70074329577938e-01; 2.53968253968254e-01; 2.70074329577938e-01; 9.48509485094851e-02; 7.99632547089353e-03; 9.42694575565176e-05]
,
7 => [9.42694575565176e-05; 7.99632547089353e-03; 9.48509485094850e-02; 2.70074329577938e-01; 2.53968253968254e-01; 2.70074329577938e-01; 9.48509485094850e-02; 7.99632547089353e-03; 9.42694575565176e-05]
,
8 => [9.42694575565174e-05; 7.99632547089353e-03; 9.48509485094850e-02; 2.70074329577938e-01; 2.53968253968254e-01; 2.70074329577938e-01; 9.48509485094850e-02; 7.99632547089353e-03; 9.42694575565174e-05]
,
9 => [2.11364995054243e-08; -8.20492075415092e-07; 1.05637836154169e-04; 7.03348023782791e-03; 1.96567709387775e-03; 8.86810021520280e-02; 1.41926548264494e-02; 2.54561232041712e-01; 2.66922230335053e-01; 2.54561232041712e-01; 1.41926548264494e-02; 8.86810021520280e-02; 1.96567709387775e-03; 7.03348023782791e-03; 1.05637836154169e-04; -8.20492075415092e-07; 2.11364995054243e-08]
,
10 => [8.62968460222986e-10; 6.09480873146898e-07; 6.01233694598480e-05; 2.88488043650676e-03; -6.33722479337376e-03; 1.80852342547985e-02; 6.40960546868076e-02; 6.11517301252477e-02; 2.08324991649609e-01; 3.03467199854206e-01; 2.08324991649609e-01; 6.11517301252477e-02; 6.40960546868076e-02; 1.80852342547985e-02; -6.33722479337376e-03; 2.88488043650676e-03; 6.01233694598480e-05; 6.09480873146898e-07; 8.62968460222986e-10]
,
11 => [8.62968460222988e-10; 6.09480873146898e-07; 6.01233694598479e-05; 2.88488043650676e-03; -6.33722479337376e-03; 1.80852342547985e-02; 6.40960546868076e-02; 6.11517301252477e-02; 2.08324991649609e-01; 3.03467199854206e-01; 2.08324991649609e-01; 6.11517301252477e-02; 6.40960546868076e-02; 1.80852342547985e-02; -6.33722479337376e-03; 2.88488043650676e-03; 6.01233694598479e-05; 6.09480873146898e-07; 8.62968460222988e-10]
,
12 => [8.62968460222990e-10; 6.09480873146898e-07; 6.01233694598478e-05; 2.88488043650676e-03; -6.33722479337375e-03; 1.80852342547985e-02; 6.40960546868076e-02; 6.11517301252477e-02; 2.08324991649609e-01; 3.03467199854206e-01; 2.08324991649609e-01; 6.11517301252477e-02; 6.40960546868076e-02; 1.80852342547985e-02; -6.33722479337375e-03; 2.88488043650676e-03; 6.01233694598478e-05; 6.09480873146898e-07; 8.62968460222990e-10]
,
13 => [8.62968460222987e-10; 6.09480873146898e-07; 6.01233694598478e-05; 2.88488043650676e-03; -6.33722479337376e-03; 1.80852342547985e-02; 6.40960546868076e-02; 6.11517301252477e-02; 2.08324991649609e-01; 3.03467199854206e-01; 2.08324991649609e-01; 6.11517301252477e-02; 6.40960546868076e-02; 1.80852342547985e-02; -6.33722479337376e-03; 2.88488043650676e-03; 6.01233694598478e-05; 6.09480873146898e-07; 8.62968460222987e-10]
,
14 => [8.62968460222983e-10; 6.09480873146899e-07; 6.01233694598479e-05; 2.88488043650676e-03; -6.33722479337376e-03; 1.80852342547985e-02; 6.40960546868076e-02; 6.11517301252477e-02; 2.08324991649609e-01; 3.03467199854206e-01; 2.08324991649609e-01; 6.11517301252477e-02; 6.40960546868076e-02; 1.80852342547985e-02; -6.33722479337376e-03; 2.88488043650676e-03; 6.01233694598479e-05; 6.09480873146899e-07; 8.62968460222983e-10]
,
15 => [8.62968460222990e-10; 6.09480873146899e-07; 6.01233694598481e-05; 2.88488043650676e-03; -6.33722479337376e-03; 1.80852342547985e-02; 6.40960546868077e-02; 6.11517301252477e-02; 2.08324991649609e-01; 3.03467199854206e-01; 2.08324991649609e-01; 6.11517301252477e-02; 6.40960546868077e-02; 1.80852342547985e-02; -6.33722479337376e-03; 2.88488043650676e-03; 6.01233694598481e-05; 6.09480873146899e-07; 8.62968460222990e-10]
,
16 => [1.26184642808151e-15; -1.48408357402989e-13; 5.11580531055042e-12; 7.92982678648693e-10; 6.14358432326179e-07; 5.94749611639316e-05; 1.50442053909142e-05; 2.72984304673340e-03; -5.56100630683582e-03; 1.65924926989360e-02; 1.76084755813180e-03; 6.17185325658672e-02; 6.54173928360926e-02; 1.99688635117345e-01; 2.81281015400332e-02; 2.58900053241516e-01; 2.81281015400332e-02; 1.99688635117345e-01; 6.54173928360926e-02; 6.17185325658672e-02; 1.76084755813180e-03; 1.65924926989360e-02; -5.56100630683582e-03; 2.72984304673340e-03; 1.50442053909142e-05; 5.94749611639316e-05; 6.14358432326179e-07; 7.92982678648693e-10; 5.11580531055042e-12; -1.48408357402989e-13; 1.26184642808151e-15]
,
17 => [-9.93139132868224e-16; 2.66406251662317e-13; -1.93413050008809e-11; 1.55421959927826e-09; -1.34860173485429e-08; 6.90862611791137e-07; 5.56911589810815e-05; 8.32360452957667e-05; 2.12022595595963e-03; -2.77121890077892e-03; 1.15292470653988e-02; 7.35301102049551e-03; 5.46775561434630e-02; 7.74436027462995e-02; 1.76075987415715e-01; 1.03876871255743e-01; 1.39110222363380e-01; 1.03876871255743e-01; 1.76075987415715e-01; 7.74436027462995e-02; 5.46775561434630e-02; 7.35301102049551e-03; 1.15292470653988e-02; -2.77121890077892e-03; 2.12022595595963e-03; 8.32360452957667e-05; 5.56911589810815e-05; 6.90862611791137e-07; -1.34860173485429e-08; 1.55421959927826e-09; -1.93413050008809e-11; 2.66406251662317e-13; -9.93139132868224e-16]
,
18 => [1.05413265823340e-18; 5.45004126506381e-15; 3.09722235760630e-12; 4.60117603486559e-10; 2.13941944795611e-08; 2.46764213457982e-07; 2.73422068011879e-06; 3.57293481989754e-05; 2.75242141167851e-04; 8.18953927502268e-04; 2.31134524035221e-03; 3.15544626918755e-03; 1.56734737518512e-02; 4.52736854651504e-02; 9.23647267169864e-02; 1.48070831155216e-01; 1.91760115888044e-01; 5.14894508069214e-04; 1.91760115888044e-01; 1.48070831155216e-01; 9.23647267169864e-02; 4.52736854651504e-02; 1.56734737518512e-02; 3.15544626918755e-03; 2.31134524035221e-03; 8.18953927502268e-04; 2.75242141167851e-04; 3.57293481989754e-05; 2.73422068011879e-06; 2.46764213457982e-07; 2.13941944795611e-08; 4.60117603486559e-10; 3.09722235760630e-12; 5.45004126506381e-15; 1.05413265823340e-18]
,
19 => [1.05413265823380e-18; 5.45004126506376e-15; 3.09722235760630e-12; 4.60117603486561e-10; 2.13941944795610e-08; 2.46764213457981e-07; 2.73422068011879e-06; 3.57293481989754e-05; 2.75242141167851e-04; 8.18953927502266e-04; 2.31134524035220e-03; 3.15544626918756e-03; 1.56734737518511e-02; 4.52736854651505e-02; 9.23647267169863e-02; 1.48070831155216e-01; 1.91760115888044e-01; 5.14894508069214e-04; 1.91760115888044e-01; 1.48070831155216e-01; 9.23647267169863e-02; 4.52736854651505e-02; 1.56734737518511e-02; 3.15544626918756e-03; 2.31134524035220e-03; 8.18953927502266e-04; 2.75242141167851e-04; 3.57293481989754e-05; 2.73422068011879e-06; 2.46764213457981e-07; 2.13941944795610e-08; 4.60117603486561e-10; 3.09722235760630e-12; 5.45004126506376e-15; 1.05413265823380e-18]
,
20 => [1.05413265823354e-18; 5.45004126506383e-15; 3.09722235760630e-12; 4.60117603486561e-10; 2.13941944795610e-08; 2.46764213457981e-07; 2.73422068011879e-06; 3.57293481989754e-05; 2.75242141167851e-04; 8.18953927502267e-04; 2.31134524035221e-03; 3.15544626918756e-03; 1.56734737518512e-02; 4.52736854651505e-02; 9.23647267169863e-02; 1.48070831155216e-01; 1.91760115888044e-01; 5.14894508069255e-04; 1.91760115888044e-01; 1.48070831155216e-01; 9.23647267169863e-02; 4.52736854651505e-02; 1.56734737518512e-02; 3.15544626918756e-03; 2.31134524035221e-03; 8.18953927502267e-04; 2.75242141167851e-04; 3.57293481989754e-05; 2.73422068011879e-06; 2.46764213457981e-07; 2.13941944795610e-08; 4.60117603486561e-10; 3.09722235760630e-12; 5.45004126506383e-15; 1.05413265823354e-18]
,
21 => [1.05413265823320e-18; 5.45004126506387e-15; 3.09722235760630e-12; 4.60117603486566e-10; 2.13941944795611e-08; 2.46764213457981e-07; 2.73422068011879e-06; 3.57293481989753e-05; 2.75242141167851e-04; 8.18953927502267e-04; 2.31134524035221e-03; 3.15544626918756e-03; 1.56734737518512e-02; 4.52736854651504e-02; 9.23647267169863e-02; 1.48070831155216e-01; 1.91760115888044e-01; 5.14894508069138e-04; 1.91760115888044e-01; 1.48070831155216e-01; 9.23647267169863e-02; 4.52736854651504e-02; 1.56734737518512e-02; 3.15544626918756e-03; 2.31134524035221e-03; 8.18953927502267e-04; 2.75242141167851e-04; 3.57293481989753e-05; 2.73422068011879e-06; 2.46764213457981e-07; 2.13941944795611e-08; 4.60117603486566e-10; 3.09722235760630e-12; 5.45004126506387e-15; 1.05413265823320e-18]
,
22 => [1.05413265823399e-18; 5.45004126506376e-15; 3.09722235760630e-12; 4.60117603486560e-10; 2.13941944795611e-08; 2.46764213457982e-07; 2.73422068011879e-06; 3.57293481989753e-05; 2.75242141167852e-04; 8.18953927502267e-04; 2.31134524035221e-03; 3.15544626918755e-03; 1.56734737518512e-02; 4.52736854651505e-02; 9.23647267169864e-02; 1.48070831155216e-01; 1.91760115888044e-01; 5.14894508069034e-04; 1.91760115888044e-01; 1.48070831155216e-01; 9.23647267169864e-02; 4.52736854651505e-02; 1.56734737518512e-02; 3.15544626918755e-03; 2.31134524035221e-03; 8.18953927502267e-04; 2.75242141167852e-04; 3.57293481989753e-05; 2.73422068011879e-06; 2.46764213457982e-07; 2.13941944795611e-08; 4.60117603486560e-10; 3.09722235760630e-12; 5.45004126506376e-15; 1.05413265823399e-18]
,
23 => [1.05413265823384e-18; 5.45004126506382e-15; 3.09722235760630e-12; 4.60117603486561e-10; 2.13941944795611e-08; 2.46764213457981e-07; 2.73422068011879e-06; 3.57293481989753e-05; 2.75242141167852e-04; 8.18953927502266e-04; 2.31134524035220e-03; 3.15544626918756e-03; 1.56734737518512e-02; 4.52736854651505e-02; 9.23647267169864e-02; 1.48070831155216e-01; 1.91760115888044e-01; 5.14894508069138e-04; 1.91760115888044e-01; 1.48070831155216e-01; 9.23647267169864e-02; 4.52736854651505e-02; 1.56734737518512e-02; 3.15544626918756e-03; 2.31134524035220e-03; 8.18953927502266e-04; 2.75242141167852e-04; 3.57293481989753e-05; 2.73422068011879e-06; 2.46764213457981e-07; 2.13941944795611e-08; 4.60117603486561e-10; 3.09722235760630e-12; 5.45004126506382e-15; 1.05413265823384e-18]
,
24 => [1.05413265823369e-18; 5.45004126506384e-15; 3.09722235760629e-12; 4.60117603486564e-10; 2.13941944795611e-08; 2.46764213457981e-07; 2.73422068011879e-06; 3.57293481989754e-05; 2.75242141167851e-04; 8.18953927502266e-04; 2.31134524035221e-03; 3.15544626918756e-03; 1.56734737518512e-02; 4.52736854651505e-02; 9.23647267169863e-02; 1.48070831155216e-01; 1.91760115888044e-01; 5.14894508069144e-04; 1.91760115888044e-01; 1.48070831155216e-01; 9.23647267169863e-02; 4.52736854651505e-02; 1.56734737518512e-02; 3.15544626918756e-03; 2.31134524035221e-03; 8.18953927502266e-04; 2.75242141167851e-04; 3.57293481989754e-05; 2.73422068011879e-06; 2.46764213457981e-07; 2.13941944795611e-08; 4.60117603486564e-10; 3.09722235760629e-12; 5.45004126506384e-15; 1.05413265823369e-18]
,
25 => [1.05413265823375e-18; 5.45004126506384e-15; 3.09722235760630e-12; 4.60117603486559e-10; 2.13941944795611e-08; 2.46764213457981e-07; 2.73422068011879e-06; 3.57293481989753e-05; 2.75242141167851e-04; 8.18953927502267e-04; 2.31134524035221e-03; 3.15544626918755e-03; 1.56734737518512e-02; 4.52736854651504e-02; 9.23647267169864e-02; 1.48070831155216e-01; 1.91760115888044e-01; 5.14894508069200e-04; 1.91760115888044e-01; 1.48070831155216e-01; 9.23647267169864e-02; 4.52736854651504e-02; 1.56734737518512e-02; 3.15544626918755e-03; 2.31134524035221e-03; 8.18953927502267e-04; 2.75242141167851e-04; 3.57293481989753e-05; 2.73422068011879e-06; 2.46764213457981e-07; 2.13941944795611e-08; 4.60117603486559e-10; 3.09722235760630e-12; 5.45004126506384e-15; 1.05413265823375e-18]
)

