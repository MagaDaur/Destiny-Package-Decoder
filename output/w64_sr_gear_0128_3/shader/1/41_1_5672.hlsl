// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:41 2023
Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[24];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[16];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  uint v4 : SV_VERTEXID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.x = t0.Load(r0.x).x;
  r0.y = cb0[0].x * r0.x;
  r0.x = cb0[1].y * r0.x + cb0[1].x;
  r0.x = cb0[2].x + r0.x;
  r0.z = cb0[3].w * r0.x + cb0[3].z;
  r0.z = 0.25 + r0.z;
  r0.w = round(r0.z);
  r0.z = r0.z + -r0.w;
  r0.w = abs(r0.z) * -16 + 8;
  r0.z = r0.z * r0.w;
  r0.w = abs(r0.z) * 0.224999994 + 0.774999976;
  r0.z = r0.z * r0.w;
  r1.x = cb0[3].x * r0.z + cb0[3].y;
  r0.x = cb0[4].w * r0.x + cb0[4].z;
  r0.x = 0.25 + r0.x;
  r0.z = round(r0.x);
  r0.x = r0.x + -r0.z;
  r0.z = abs(r0.x) * -16 + 8;
  r0.x = r0.x * r0.z;
  r0.z = abs(r0.x) * 0.224999994 + 0.774999976;
  r0.x = r0.x * r0.z;
  r1.y = cb0[4].x * r0.x + cb0[4].y;
  r1.z = 0;
  r0.x = 32767.0996 * v0.w;
  r0.x = (int)r0.x;
  r0.z = max((int)r0.x, (int)-r0.x);
  r0.w = cmp((int)r0.z >= 2048);
  r1.w = cmp((int)r0.x < 0);
  r2.x = (uint)v4.x << 1;
  r2.x = r1.w ? r2.x : v4.x;
  r0.z = (uint)r0.z << 3;
  r0.z = (int)r0.z + 0xffffc000;
  bitmask.z = ((~(-1 << 3)) << 0) & 0xffffffff;  r0.z = (((uint)r2.x << 0) & bitmask.z) | ((uint)r0.z & ~bitmask.z);
  r2.xyzw = t1.Load(r0.z).xyzw;
  r0.x = r0.w ? r2.x : r0.x;
  r2.x = (int)r0.x * 3;
  r3.xy = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  if (r0.w != 0) {
    r0.xw = (uint2)r2.zw;
    r0.xw = float2(0.00392156886,0.00392156886) * r0.xw;
    r4.x = cb1[r2.x+8].w;
    r4.y = cb1[r3.x+8].w;
    r4.z = cb1[r3.y+8].w;
    r2.z = (int)r2.y * 3;
    r2.yw = mad(int2(3,3), (int2)r2.yy, int2(1,2));
    r5.xyz = cb1[r2.z+8].xyz * r0.www;
    r6.x = cb1[r2.z+8].w * r0.w;
    r6.y = cb1[r2.y+8].w * r0.w;
    r6.z = cb1[r2.w+8].w * r0.w;
    r7.xyz = cb1[r2.y+8].xyz * r0.www;
    r2.yzw = cb1[r2.w+8].xyz * r0.www;
    r5.xyz = cb1[r2.x+8].xyz * r0.xxx + r5.xyz;
    r4.xyz = r4.xyz * r0.xxx + r6.xyz;
    r6.xyz = cb1[r3.x+8].xyz * r0.xxx + r7.xyz;
    r7.xyz = cb1[r3.y+8].xyz * r0.xxx + r2.yzw;
    if (r1.w != 0) {
      r0.x = (int)r0.z + 1;
      r8.xyzw = t1.Load(r0.x).xyzw;
      r0.xz = (uint2)r8.zw;
      r0.xz = float2(0.00392156886,0.00392156886) * r0.xz;
      r2.yz = (int2)r8.xy * int2(3,3);
      r8.xyzw = mad(int4(3,3,3,3), (int4)r8.xxyy, int4(1,2,1,2));
      r9.x = cb1[r2.y+8].w * r0.x;
      r9.y = cb1[r8.x+8].w * r0.x;
      r9.z = cb1[r8.y+8].w * r0.x;
      r10.xyz = r0.xxx * cb1[r2.y+8].xyz + r5.xyz;
      r9.xyz = r9.xyz + r4.xyz;
      r11.xyz = r0.xxx * cb1[r8.x+8].xyz + r6.xyz;
      r12.xyz = r0.xxx * cb1[r8.y+8].xyz + r7.xyz;
      r13.x = cb1[r2.z+8].w * r0.z;
      r13.y = cb1[r8.z+8].w * r0.z;
      r13.z = cb1[r8.w+8].w * r0.z;
      r5.xyz = r0.zzz * cb1[r2.z+8].xyz + r10.xyz;
      r4.xyz = r13.xyz + r9.xyz;
      r6.xyz = r0.zzz * cb1[r8.z+8].xyz + r11.xyz;
      r7.xyz = r0.zzz * cb1[r8.w+8].xyz + r12.xyz;
    }
  } else {
    r5.xyz = cb1[r2.x+8].xyz;
    r4.x = cb1[r2.x+8].w;
    r4.y = cb1[r3.x+8].w;
    r4.z = cb1[r3.y+8].w;
    r6.xyz = cb1[r3.x+8].xyz;
    r7.xyz = cb1[r3.y+8].xyz;
  }
  r0.xzw = v0.xyz * cb1[5].www + cb1[5].xyz;
  r0.xyz = r0.yyy * r1.xyz + r0.xzw;
  r1.xyz = cb12[15].xyz + r4.xyz;
  r5.w = r1.x;
  r0.w = 1;
  r1.x = dot(r5.xyzw, r0.xyzw);
  r6.w = r1.y;
  r1.y = dot(r6.xyzw, r0.xyzw);
  r7.w = r1.z;
  r0.x = dot(r7.xyzw, r0.xyzw);
  r2.xyzw = cb12[1].xyzw * r1.yyyy;
  r1.xyzw = cb12[0].xyzw * r1.xxxx + r2.xyzw;
  r0.xyzw = cb12[2].xyzw * r0.xxxx + r1.xyzw;
  o0.xyzw = cb12[14].xyzw + r0.xyzw;
  return;
}