#========================================================================
#	�}�~�]�E�X�g�[���[
#	�X�e�[�W2�@VS�얲
#	�ꏊ�F�_�Ёi��j
#	�X�e�[�W�^�C�g��
#	   �u����얲�A���O�����v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/mamizou.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#�t�F�C�X�摜
,DefineObject,mamizou,-360,0,false
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

,Function,"GameStory_PlayBGM(706);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,mamizou_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#�����\��ݒ�
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,reimu,�얲_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,reimu,-1280,&
,th145_Show,mamizou,-1280	,

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
�I�J���g�{�[���H\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�G2,0,0
��������Ȃ炫����\n�����Ă���񂾂���\,a11x2,0,0
,ClearBalloon,reimu

#�Љ�J�b�g�\���@�얲�́u�얲_�G2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���傢�Ƒ݂���\n����񂩂̂�\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�f1,0,0
���[��\n������Ď������������Ȃ��̂�\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�Ȃ��\n�􂢂̃A�C�e�����Ė󂶂��\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��2,0,0
�􂢁c�c\n����Ӗ����������m��Ȃ����\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_�]1,0,0
���Ⴊ�������͖���������\n������̂��Ⴊ�c�c\,a15x3,0,0
,ClearBalloon,mamizou

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�]1,0,0
���Ⴀ�������̂ˁH\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
�����Ĕs�k�����\n�������̂�\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�ʔ������[�������\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���Ⴀ����\,a05x2,0,0
,ClearBalloon,mamizou





# ********************************************
# ********************************************

,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,mamizou,-1280,&
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
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,reimu,�얲_��1,0,0

,th145_Show,mamizou,-1280	,&,#�}�~�]�E�t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�}�~�]�E�t�F�C�X�\���J�n

,SetFocus,reimu
���������āA�F���l�H\,a11x2,0,0

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
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,reimu,�얲_��1,0,0

,th145_Show,mamizou,-1280	,&,#�}�~�]�E�t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�}�~�]�E�t�F�C�X�\���J�n


,SetFocus,reimu		,
�����Ă����ėǂ����\n�I�J���g�{�[��\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
���������O����\n�炵���Ȃ���\,a11x2,0,0
,ClearBalloon,mamizou

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
�{�[���𒲂ׂ�����\n�������邱�Ƃ������Ă�\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,mamizou		,
,ImageDef,mamizou,�}�~�]�E_��1,0,0
�ق����ق���\n�Ȃ牓�����������Ă�������\,a15x3,0,0
,ClearBalloon,mamizou



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
