#========================================================================
#	��փX�g�[���[
#	�X�e�[�W2�@VS������
#	�ꏊ�F��D
#	�X�e�[�W�^�C�g��
#	   �u���C�̖������@�g���v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/ichirin.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#�t�F�C�X�摜
,DefineObject,ichirin,-360,0,false
,DefineObject,marisa,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(704);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,ichirin_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#�����\��ݒ�
,ImageDef,ichirin,���_��1,0,0
,ImageDef,marisa,������_��1,0,0

#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,ichirin,-1280	,#

,SetFocus,ichirin		,#�������L�������w��
���x�͉����ɍs��������\,a11x2,0,0
,ClearBalloon,ichirin

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
���A����������\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_�]1,0,0
���̐킢�̂��A�Ń{�[���W�߂�\n�y�����ɖڊo�߂܂�����\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
�����l���W�܂�܂���\,a11x2,0,0
,ClearBalloon,ichirin


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�G1,0,0
,th145_Show,marisa,-1280	,#�������t�F�C�X�\���J�n
���[��\n�������[\,a05x2,0,0
,ClearBalloon,marisa

#�Љ�J�b�g�\���@�������́u������_�G1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_�f1,0,0
������\n�������܂���˂��H\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_�f1,0,0
�D���Ă��b��������\n���̂���������݂�������\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�f1,0,0
�{�[���V�т�\n���X�ɂ��Ă����������ǂ���\,a15x3,0,0
,ClearBalloon,marisa


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�����͂����������\n�����񂾂��c�c\n�����Ă����ʂ̂悤����\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
�悭�����Ă邶��Ȃ�\n���Ⴀ�s����I\,b11x2,0,0
,ClearBalloon,ichirin






,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,ichirin,-1280,&
,th145_Hide,marisa,-1280,

,Function,"GameStory_PlayBattleBGM(503);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End





# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,ichirin,���_��1,0,0
,ImageDef,marisa,������_��1,0,0

,th145_Show,ichirin,-1280	,&,#��փt�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#��փt�F�C�X�\���J�n

,SetFocus,marisa
�܂��{�[������ɓ���Ă��܂���\,a15x3,0,0

,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,ichirin,���_�f1,0,0
,ImageDef,marisa,������_��1,0,0

,th145_Show,ichirin,-1280	,&,#��փt�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#��փt�F�C�X�\���J�n

,SetFocus,ichirin		,#�������L�������w��
���������荇����\n�����ł���\,c11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#�������L�������w��
�M���炵��������\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,marisa
�܂�����\n���������C���Ȃ񂾂�\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa
����ɂ��Ă����Ɠ��\n���O���˂�\,a11x2,0,0
,ClearBalloon,marisa


,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
�c���͒N��\n�����Ă��ł��傤�H\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,marisa
���[��󒆂ɂ���������\n���̕@�����������Ă���\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
�󒆁c�c�H\n���ŋ����Ă����́H\,a11x2,0,0
,ClearBalloon,ichirin


,SetFocus,marisa
���ł��낤�Ȃ�\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa
���O���S���W�߂���\n�ǂ��Ȃ�̂����Ă݂���\n�C�����邩�炩��\,a15x3,0,0
,ClearBalloon,marisa





,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
