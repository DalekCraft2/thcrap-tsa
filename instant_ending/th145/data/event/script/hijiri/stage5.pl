#========================================================================
#	���X�g�[���[
#	�X�e�[�W5�@VS�_�q
#	�ꏊ�F�_��_
#	�X�e�[�W�^�C�g��
#	   �u�S�I�J���g�{�[���̍s���́v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/hijiri.csv"
,LoadImageDef,"data/event/pic/miko.csv"

#�t�F�C�X�摜
,DefineObject,hijiri,-360,0,false
,DefineObject,miko,-360,0,true

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

,Function,"GameStory_PlayBGM(705);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,hijiri_label,50,360,false
,DefineObject,miko_label,1120,360,false

#�����\��ݒ�
,ImageDef,hijiri,��_��1,0,0
,ImageDef,miko,�_�q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



,th145_Show,miko,-1280,&
,th145_Show,hijiri,-1280	,

#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#��͂�Ō��\n��荇���̂͂��O��\,a11x2,0,0
#,ClearBalloon,miko
#
##�Љ�J�b�g�\���@�_�q�́u�_�q_��1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,miko
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_��1,0,0
#�M�����{�[�����W�߂Ă��邱�Ƃ�\n�����Ă܂���\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_�f1,0,0
#�����ړI�ł��H\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�]1,0,0
#�����̎��������u���Ď��₩\n�܂��ǂ��낤\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�{1,0,0
#��������ʉ\�ɖ����ɂȂ���\n�{�[�����W�߂Ă���Ƃł�\n�v�����̂��H\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_��1,0,0
#�܂����A�v���ĂȂ���\n������S�z�Ȃ�ł�����\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_�]1,0,0
#�����Ă��̃{�[��\n���ׂ̍D��Ɛ[���\n�o���Ă����ł�����\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#�D��Ɛ[��c�c��\n���O�炵������������\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�]2,0,0
#����͊O�̐��E�̑㕨��\n�O�ɈӐ}�I��\R[���z��|������]�ɍ�p���悤\n�Ƃ���҂����锤�ł���\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�{1,0,0
#���̎҂����z���ɍD��S��\n�����Ă���Ƃ�����\n����͋��낵�����Ƃ�\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_��1,0,0
#�O�̐��E�c�c�ł���\n�Ȃ������Ő��̂�����Ȃ�\n���΂��肾�����̂�\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�f1,0,0
#���͂�����m���߂�ׂ�\n�����ŏW�߂Ē��ׂĂ���̂�\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#���͓��������H\n����ŉ���\n���O���{�[�����W�߂闝�R�́H\,a15x3,0,0
#,ClearBalloon,miko
#
#,Function,"StopBGM(4000);",# BGM��~
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_�{1,0,0
#���́c�c����\R[�s�s�`��|�I�J���g]�����ӂ�\n���p����Ȃ��悤�S�ēZ�߂�\n���󂵂悤�Ǝv���̂ł�\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�]1,0,0
#���󂾂ƁH\n�������L�����ɊW������̂�\n���O�B�̓��Z��������\,a15x3,0,0
#,ClearBalloon,miko

,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n

#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�{1,0,0
#�΂킹���\,a05x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�f1,0,0
#���̓s�s�`��\n�\������R�����I��\n�L�܂��Ă���\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#�l�̌��Ɍ˂͗��Ă���\n��������H\,a11x2,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_�{1,0,0
#���ɂ��Ă��I�J���g�{�[����\n�퓬����Ăł������Ƃ��\n�o���ʂ悤��\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,miko		,
#,ImageDef,miko,�_�q_��1,0,0
#���O�Ǝ��̃C�f�I���M�[��\n�ǂ��炪�������̂������߂�̂�\n�������������̂�\,a15x3,0,0
#,ClearBalloon,miko
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_��1,0,0
#�d����������\n�M���͑���������̂ł�\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_�{1,0,0
#����ȓz�Ɉ����̗͂�\n�n���킯�ɂ͂����Ȃ��I\,a11x2,0,0
#,ClearBalloon,hijiri




##���҃t�F�C�X�P��
#,th145_Hide,hijiri,-1280,&
#,th145_Hide,miko,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End





# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,hijiri,��_��1,0,0
,ImageDef,miko,�_�q_�]1,0,0

,th145_Show,hijiri,-1280	,&,#���t�F�C�X�\���J�n
,th145_Show,miko,-1280	,#���t�F�C�X�\���J�n

,SetFocus,miko
����őS�������Ă��܂�����\,a15x3,0,0

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
,ImageDef,hijiri,��_��1,0,0
,ImageDef,miko,�_�q_��1,0,0

,th145_Show,hijiri,-1280	,&,#���t�F�C�X�\���J�n
,th145_Show,miko,-1280	,#���t�F�C�X�\���J�n

,SetFocus,miko
�{��\,a11x2,0,0
,ClearBalloon,miko

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
