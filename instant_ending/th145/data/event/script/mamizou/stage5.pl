#========================================================================
#	�}�~�]�E�X�g�[���[
#	�X�e�[�W5�@VS俎q
#	�ꏊ�F�O�̐��E
#	�X�e�[�W�^�C�g��
#	   �u�����ۂ�ۂ����v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/mamizou.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#�t�F�C�X�摜
,DefineObject,mamizou,-360,0,false
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
,DefineObject,mamizou_label,50,360,false
,DefineObject,usami_label,1120,360,false

#�����\��ݒ�
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,usami,俎q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,mamizou,-1280	,


#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�O�̐��E�ɋ�������\n�]�芴���Ȃ�������\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#���߂Ă݂Ă݂�ƕω���\n�ڂ܂��邵�����񂶂�\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_�]1,0,0
#�ɉh�����ނ�\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�ǂ������Ƃ��Ă�\n�ω�������ƌ������Ƃ�\n�����Ă���ƌ���������\,a15x3,0,0
#,ClearBalloon,mamizou
#
## 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Under(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
#
#
#,ImageDef,usami,俎q_��1,0,0
#,th145_Show,usami,-1280,
#
#,SetFocus,usami		,
#����\n�܂��ނꂽ��[\,a11x2,0,0
#,ClearBalloon,usami
#
##�Љ�J�b�g�\���@俎q�́u俎q_��1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#���̐K��\n���x�͔���₷���d������[\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�ق����ǂ��������̂�\n����Ԑl�ԂȂ��\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#������������\n���O���񂶂��\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�ł��܂��������\n���w���Ƃ͋�����\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�]1,0,0
#���w������\n���ǂ�����Ȍ���������[�H\n�ӂ���[��\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�ł��ǂ������̂�\n���܂��O����̂��A��\n���z���͑吷��オ�肶��\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#����ς�H\n�����ł��傻���ł���\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�傫�Ȕg�䂪���̂Ȃ�\n�΂𓊂����b�オ�������\n����˂�\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�Ƃ���ł���\n���O����̍ŏI�I��\n�ړI�͂Ȃ񂶂�\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�f1,0,0
#�ʂɁH\n�ʔ������Ȏ�����������\n������������\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�ŏI�I�ȖړI�A���Ȃ��\n����Ȃ߂�ǂ���������\n�l���ĂȂ���\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#����������������\n�܂����ǂ��̏��w�c�c����\n���q�����͂����������񂩂̂�\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_�]1,0,0
#���������ꂶ�Ⴀ\n�����ɖO���Ă��܂���\,a11x2,0,0
#,ClearBalloon,mamizou
#
#
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�����łǂ�����\n�N�Ə��������Ȃ����H\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�f1,0,0
#�����ł����āH\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�����ɐV����\n�p���[�X�g�[��������\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�ށA�M���͂�����\,a11x2,0,0
#,ClearBalloon,usami
#
#,Function,"StopBGM(4000);",# BGM��~
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#��������C�t���Ă���\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�I�J���g�{�[���̐��̂�\n�p���[�X�|�b�g�̐΂����\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_�]1,0,0
#�����ęN�������Ă���̂�\n���z���̃p���[�X�g�[������\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_�]1,0,0
#�R����������Ό��z����\n�s�����͎��݂ɂȂ�\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�������傪��������\n�������낤\,a11x2,0,0
#,ClearBalloon,mamizou
#
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�ʔ��[��\n�~�����~����\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�f1,0,0
#�ŁA������������H\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#��������̂��c�c\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�O�̐��E������ē�����\n�Ⴆ�邩�H\,a11x2,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#����Ȃ�ŗǂ��́H\n���Ⴀ����[\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,mamizou		,
#,ImageDef,mamizou,�}�~�]�E_��1,0,0
#�N�������Ƃ͔��肫����\n�����ł̂�\n�]�薳���͌�����\,a15x3,0,0
#,ClearBalloon,mamizou
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#��[��\n��R���C���N���Ă�����\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#���̒��\�͂̌������ˁI\,a11x2,0,0
#,ClearBalloon,usami
#
#
#
#
#

#���҃t�F�C�X�P��
,th145_Hide,mamizou,-1280,&
,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,mamizou,�}�~�]�E_��1,0,0
,ImageDef,usami,俎q_�]1,0,0

,th145_Show,mamizou,-1280	,&,#�}�~�]�E�t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�}�~�]�E�t�F�C�X�\���J�n

,SetFocus,usami
��[��\n����Ō��z���ɍs������I\,a11x2,0,0

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
,ImageDef,usami,俎q_��1,0,0

,th145_Show,mamizou,-1280	,&,#�}�~�]�E�t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�}�~�]�E�t�F�C�X�\���J�n

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
