#========================================================================
#	�z�s�X�g�[���[
#	�X�e�[�W2�@VS�얲
#	�ꏊ�F���a���J�_
#	�X�e�[�W�^�C�g��
#	   �u�s�v�c�ƒ��q�������킢�v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/futo.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#�t�F�C�X�摜
,DefineObject,futo,-360,0,false
,DefineObject,reimu,-360,0,true

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

,Function,"GameStory_PlayBGM(701);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,futo_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#�����\��ݒ�
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,reimu,�얲_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,futo,-1280	,

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
�������ȓz�͑��q�l��\n����ɂ��Ă��锤������c�c\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
���͒N����{�[����\n�D��������\,a11x2,0,0
,ClearBalloon,futo

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,ImageDef,reimu,�얲_�G2,0,0
,th145_Show,reimu,-1280,

#�Љ�J�b�g�\���@�얲�́u�얲_�G2�v����̂ݎ��s�\
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
����H\n�얲�a����Ȃ���\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
���x�ǂ�\n�I�J���g�{�[����q����\n�������Ă����񂩁H\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�f1,0,0
�����c�c������\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�G1,0,0
���x�I�J���g�{�[���̎���\n���ׂĂ�����\,a15x3,0,0
,ClearBalloon,reimu


,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,futo,-1280,&
,th145_Hide,reimu,-1280,

,Function,"GameStory_PlayBattleBGM(501);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End





# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,reimu,�얲_�f1,0,0

,th145_Show,futo,-1280	,&,#�z�s�t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�z�s�t�F�C�X�\���J�n

,SetFocus,reimu
�܂���ɓ��ꂿ������Ȃ�\n���x�͎�������������̂�\,a11x2,0,0

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
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,reimu,�얲_��1,0,0

,th145_Show,futo,-1280	,&,#�z�s�t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�z�s�t�F�C�X�\���J�n


,SetFocus,futo		,
��[��\n�V���Ƀ{�[������ɓ��ꂽ���I\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,�z�s_�]1,0,0
���������Ď����������\n���ĂȂ��������H\,a11x2,0,0
,ClearBalloon,futo


,SetFocus,reimu		,
���A����Ȃ��ƂȂ����\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
������A�c��̃{�[����\n���L�҂�S�Ēm�肽���Ȃ��H\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,futo		,
,ImageDef,futo,�z�s_�f1,0,0
�ق��@���ł���Ȏ���������\n�����񂾁H\,a15x3,0,0
,ClearBalloon,futo


,SetFocus,reimu		,
�{�[���͎����ŏN�W����\n�ώ@�����ق����ǂ������łˁc�c\,a15x3,0,0
,ClearBalloon,reimu





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
