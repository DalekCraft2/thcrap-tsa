#========================================================================
#	�������X�g�[���[
#	�X�e�[�W4�@VS俎q
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u�ŏ����琂͊�Ղ̃^�C�~���O�v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/koishi.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#�t�F�C�X�摜
,DefineObject,koishi,-360,0,false
,DefineObject,usami,-360,0,true

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

,Function,"GameStory_PlayBGM(707);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,koishi_label,50,360,false
,DefineObject,usami_label,1120,360,false

#�����\��ݒ�
,ImageDef,koishi,������_��1,0,0
,ImageDef,usami,俎q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Under(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,usami,-1280	,

#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�����́c�c\n�_�Ђ�\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#��������I\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#���̒K�̌����Ƃ���\n�����Ɍ��z���ɓ��ꂽ\n���ۂ����\,a15x3,0,0
#,ClearBalloon,usami
#
##�Љ�J�b�g�\���@俎q�́u俎q_��1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


#,SetFocus,usami		,
#,ImageDef,usami,俎q_�]1,0,0
#�����͊m�F����Ώ\���\��\n��U�A���ď������Ă��悤\,a15x3,0,0
#,ClearBalloon,usami
#
#,ImageDef,koishi,������_��1,0,0
#,th145_Show,koishi,-1280,
#
#,SetFocus,koishi		,
#�������[��\,a05x2,0,0
#,ClearBalloon,koishi
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#��H\n�������������H\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,koishi		,
#,ImageDef,koishi,������_�f1,0,0
#�������[��\n�������܂����[\,a11x2,0,0
#,ClearBalloon,koishi
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�f1,0,0
#�c�c���������ăX�}�z����\n�������Ă���H\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�����͌��O���\n�c�c�C�̂����C�̂���\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�܂����g�т��q����\n�󖳂����c�c\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,koishi		,
#,ImageDef,koishi,������_�{1,0,0
#�������[��\n�˂��d�b�ɏo�Ă悤\,a11x2,0,0
#,ClearBalloon,koishi
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�f1,0,0
#���������΂����\n���k�����������H\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#���O�Ȃ̂ɓd�b��\n�|�����Ă���\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�u���M���̌��ɂ���́v\n�Ƃ����Ƃ��������Ⴄ�z�c�c\,c15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,koishi		,
#,ImageDef,koishi,������_��1,0,0
#�������[��\n���A���˂�\,a05x2,0,0
#,ClearBalloon,koishi
#
#,SetFocus,koishi		,
#,ImageDef,koishi,������_��1,0,0
#�M���̖ڂ̑O�ɂ���́I\,a11x2,0,0
#,ClearBalloon,koishi
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#���킠�I\n�ŁA�o���[�I�@���[�΁[���[�I\,a15x3,0,0
#,ClearBalloon,usami
#
#
,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,koishi,-1280,&
,th145_Hide,usami,-1280,

,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,koishi,������_��1,0,0
,ImageDef,usami,俎q_��1,0,0

,th145_Show,koishi,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,usami
�����Ȃ���\R[�O�̐��E|�ւ���Ȃ�����]��\n�����I\,a11x2,0,0

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
,ImageDef,koishi,������_��1,0,0
,ImageDef,usami,俎q_��1,0,0

,th145_Show,koishi,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,usami
�{��\,a11x2,0,0
,ClearBalloon,usami

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
