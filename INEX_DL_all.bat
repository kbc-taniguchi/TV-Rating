cd G:\���L�h���C�u\TV�Ґ��������f�[�^\�y�ݒ莑���ꗗ�z\Python

rem INEX����f�[�^���_�E�����[�h
echo INEX����f�[�^���_�E�����[�h���܂�

rem 1.����������pdf�̃_�E�����[�h
python InexDL_DR.py inexdata_DR.csv

rem 2.���ԋ敪�W�v���ǁ~���ԋ敪���@(A01)(A02)(A03)(A04)(A11)(A12)�̃_�E�����[�h
python InexDL_TDS1.py inexdata_TDS1.csv

rem 3.�ԑg�������W�v�@(C01)(C02)(C11)(C12)�̃_�E�����[�h
python InexDL_TgP.py inexdata_TgP.csv

rem 4.���������ԑg�W�v�@(D1)(D2(D3)�̃_�E�����[�h
python InexDL_HR.py inexdata_HR.csv


rem 5.-7.***Excel�����pdf�t�@�C���̍쐬��Garoon�ւ̓��e�@�������j���[�X(��)�E�y���j����ƕ��z�������j���[�X(�T)
start "" cmd.exe /c "G:\���L�h���C�u\TV�Ґ��������f�[�^\�y�ݒ莑���ꗗ�z\�e����s�t�@�C��\RatingNewsDW.bat > INEX2.log 2>&1"

rem 8.���ԋ敪�W�v���ǁ~���ԋ敪��Excel��������@(B1)(B2)�̃_�E�����[�h
python InexDL_TDS2.py inexdata_TDS2.csv

rem 9.�ԑg�������ꗗ�@(E)�̃_�E�����[�h
python InexDL_PL.py inexdata_PL.csv

rem 10.�^�C���e�[�u���W�v�@(F)�̃_�E�����[�h
python InexDL_TT.py inexdata_TT.csv

rem 11.�ԑg�������W�v�@(G01)(G02)(G03)(G04)(G11)(G12)(G13)(G14)�̃_�E�����[�h
python InexDL_TrP.py inexdata_TrP.csv

rem Excel�t�@�C���쐬
rem �y������ƕ��z
rem 12.Excel�t�@�C���̍쐬�@[09�16]���Дԑg�����L���O
python Excel_copys_Main.py Excel_copy.py ECdata_09_16.csv

rem �e�펋�����V�~�����[�V�����̎����쐬
rem 13.�y12�z�N�Ԍl vs.FBS
python Excel_copys_Main.py Excel_copy.py ECdata_12F.csv

rem 14.�y12�z�N�Ԍl vs.RKB
python Excel_copys_Main.py Excel_copy.py ECdata_12R.csv

rem 15.�y15�z�N�x�l vs.FBS
python Excel_copys_Main.py Excel_copy.py ECdata_15F.csv

rem 16.�y15�z�N�x�l vs.RKB
python Excel_copys_Main.py Excel_copy.py ECdata_15R.csv

rem 17.�y24�z�N��U49 vs.FBS
python Excel_copys_Main.py Excel_copy.py ECdata_24F.csv

rem 18.�y24�z�N��U49 vs.RKB
python Excel_copys_Main.py Excel_copy.py ECdata_24R.csv

rem 19.�y25�z�N�xU49 vs.FBS
python Excel_copys_Main.py Excel_copy.py ECdata_25F.csv

rem 20.�y25�z�N�xU49 vs.RKB
python Excel_copys_Main.py Excel_copy.py ECdata_25R.csv

rem 21.�^�C���e�[�u���̍쐬
python Excel_copys_Main.py Excel_copy_Pdf01.py ECdata_TimeTable.csv

rem �y���j����ƕ��z
rem 22.�����
python Excel_copys_Main.py Excel_copy.py ECdata_Shiryo1.csv

rem 23.�y01�z�N��&�N�x ��N������������r(����)
python Excel_copys_Main.py Excel_copy.py ECdata_CmpSetai.csv

rem 24.�y19�z�N��&�N�x ��N������������r(�l)
python Excel_copys_Main.py Excel_copy.py ECdata_CmpKojin.csv

rem 25.�y21�z�N��&�N�x ��N������������r(U49)
python Excel_copys_Main.py Excel_copy.py ECdata_CmpU49.csv

rem 26.�y������ƁzHIBS�֎������f�[�^��o�^
python HIBS_Data_Enter.py RCdata_HIBS.csv

rem 27.�y������ƁzRating Tracker�֎������f�[�^��o�^
python RT_Data_Enter.py RCdata_RT.csv

rem 7���ԑҋ@����
timeout /t 420 /nobreak > nul
rem 28.Garoon�̌f����Time Table�𓊍e����
python Garoon_post.py "Time Table" Garoon_post04.csv

rem 29.��ƏI���񍐂��X�y�[�X�ɓ��e����
python "G:\���L�h���C�u\TV�Ґ��������f�[�^\�y�ݒ莑���ꗗ�z\�e����s�t�@�C��\��ƏI���ʒm�X�N���v�g.py"

echo �I�����܂���

exit /b

rem �y�Q�l�zbat�t�@�C�����ŕ����̃v���O������񓯊����s����ꍇ�́A�R�}���h�̑O��start���L�ڂ���Ηǂ�