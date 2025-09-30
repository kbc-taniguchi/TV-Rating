cd G:\共有ドライブ\TV編成視聴率データ\【設定資料一覧】\Python

rem INEXからデータをダウンロード
echo INEXからデータをダウンロードします

rem 1.視聴率速報pdfのダウンロード
python InexDL_DR.py inexdata_DR.csv

rem 2.時間区分集計＜局×時間区分＞　(A01)(A02)(A03)(A04)(A11)(A12)のダウンロード
python InexDL_TDS1.py inexdata_TDS1.csv

rem 3.番組視聴率集計　(C01)(C02)(C11)(C12)のダウンロード
python InexDL_TgP.py inexdata_TgP.csv

rem 4.高視聴率番組集計　(D1)(D2(D3)のダウンロード
python InexDL_HR.py inexdata_HR.csv


rem 5.-7.***Excelおよびpdfファイルの作成とGaroonへの投稿　視聴率ニュース(日)・【月曜日作業分】視聴率ニュース(週)
start "" cmd.exe /c "G:\共有ドライブ\TV編成視聴率データ\【設定資料一覧】\各種実行ファイル\RatingNewsDW.bat > INEX2.log 2>&1"

rem 8.時間区分集計＜局×時間区分＞Excel分割あり　(B1)(B2)のダウンロード
python InexDL_TDS2.py inexdata_TDS2.csv

rem 9.番組視聴率一覧　(E)のダウンロード
python InexDL_PL.py inexdata_PL.csv

rem 10.タイムテーブル集計　(F)のダウンロード
python InexDL_TT.py inexdata_TT.csv

rem 11.番組視聴率集計　(G01)(G02)(G03)(G04)(G11)(G12)(G13)(G14)のダウンロード
python InexDL_TrP.py inexdata_TrP.csv

rem Excelファイル作成
rem 【毎日作業分】
rem 12.Excelファイルの作成　[09･16]自社番組ランキング
python Excel_copys_Main.py Excel_copy.py ECdata_09_16.csv

rem 各種視聴率シミュレーションの資料作成
rem 13.【12】年間個人 vs.FBS
python Excel_copys_Main.py Excel_copy.py ECdata_12F.csv

rem 14.【12】年間個人 vs.RKB
python Excel_copys_Main.py Excel_copy.py ECdata_12R.csv

rem 15.【15】年度個人 vs.FBS
python Excel_copys_Main.py Excel_copy.py ECdata_15F.csv

rem 16.【15】年度個人 vs.RKB
python Excel_copys_Main.py Excel_copy.py ECdata_15R.csv

rem 17.【24】年間U49 vs.FBS
python Excel_copys_Main.py Excel_copy.py ECdata_24F.csv

rem 18.【24】年間U49 vs.RKB
python Excel_copys_Main.py Excel_copy.py ECdata_24R.csv

rem 19.【25】年度U49 vs.FBS
python Excel_copys_Main.py Excel_copy.py ECdata_25F.csv

rem 20.【25】年度U49 vs.RKB
python Excel_copys_Main.py Excel_copy.py ECdata_25R.csv

rem 21.タイムテーブルの作成
python Excel_copys_Main.py Excel_copy_Pdf01.py ECdata_TimeTable.csv

rem 【月曜日作業分】
rem 22.部会資料
python Excel_copys_Main.py Excel_copy.py ECdata_Shiryo1.csv

rem 23.【01】年間&年度 昨年同期視聴率比較(世帯)
python Excel_copys_Main.py Excel_copy.py ECdata_CmpSetai.csv

rem 24.【19】年間&年度 昨年同期視聴率比較(個人)
python Excel_copys_Main.py Excel_copy.py ECdata_CmpKojin.csv

rem 25.【21】年間&年度 昨年同期視聴率比較(U49)
python Excel_copys_Main.py Excel_copy.py ECdata_CmpU49.csv

rem 26.【毎日作業】HIBSへ視聴率データを登録
python HIBS_Data_Enter.py RCdata_HIBS.csv

rem 27.【毎日作業】Rating Trackerへ視聴率データを登録
python RT_Data_Enter.py RCdata_RT.csv

rem 7分間待機する
timeout /t 420 /nobreak > nul
rem 28.Garoonの掲示板にTime Tableを投稿する
python Garoon_post.py "Time Table" Garoon_post04.csv

rem 29.作業終了報告をスペースに投稿する
python "G:\共有ドライブ\TV編成視聴率データ\【設定資料一覧】\各種実行ファイル\作業終了通知スクリプト.py"

echo 終了しました

exit /b

rem 【参考】batファイル内で複数のプログラムを非同期実行する場合は、コマンドの前にstartを記載すれば良い