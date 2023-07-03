// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:01 2023
Texture2D<float4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

SamplerState s1_s : register(s1);

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
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  uint v4 : SV_VERTEXID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float3 o4 : TEXCOORD4,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[8].x < 9.99999997e-007);
  if (r0.x != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o3.xyzw = float4(0,0,0,0);
    o5.xyzw = float4(0,0,0,0);
    o2.xyz = float3(0,0,0);
    o4.xyz = float3(10000,10000,-10000);
  } else {
    r0.x = 32767.0996 * v0.w;
    r0.y = 32767.0996 * v1.w;
    r0.xy = (int2)r0.xy;
    r0.z = max((int)r0.x, (int)-r0.x);
    r0.w = cmp((int)r0.z >= 2048);
    r1.x = cmp((int)r0.x < 0);
    r1.y = (uint)v4.x << 1;
    r1.y = r1.x ? r1.y : v4.x;
    r0.z = (uint)r0.z << 3;
    r0.z = (int)r0.z + 0xffffc000;
    bitmask.z = ((~(-1 << 3)) << 0) & 0xffffffff;  r0.z = (((uint)r1.y << 0) & bitmask.z) | ((uint)r0.z & ~bitmask.z);
    r2.xyzw = t1.Load(r0.z).xyzw;
    r0.y = max(0, (int)r0.y);
    r1.y = (uint)r0.y << 5;
    r1.y = (int)r1.y & 1792;
    r1.y = (int)r1.y | (int)r2.x;
    r0.x = r0.w ? r1.y : r0.x;
    r1.y = (uint)r0.x << 1;
    bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
    if (r0.w != 0) {
      r0.w = (uint)r0.y << 2;
      r0.w = (int)r0.w & 1792;
      r0.w = (int)r0.w | (int)r2.y;
      r1.zw = (uint2)r2.zw;
      r1.z = 0.00392156886 * r1.z;
      r2.x = cb1[r1.y+8].w;
      r2.y = cb1[r0.x+8].w;
      r2.z = (uint)r0.w << 1;
      bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
      r2.w = dot(cb1[r2.z+8].xyzw, cb1[r1.y+8].xyzw);
      r2.w = cmp(r2.w >= 0);
      r2.w = r2.w ? 0.00392156886 : -0.00392156886;
      r1.w = r2.w * r1.w;
      r3.xyz = cb1[r2.z+8].xyz * r1.www;
      r4.xyz = cb1[r0.w+8].xyz * r1.www;
      r5.x = cb1[r2.z+8].w * r1.w;
      r5.y = cb1[r0.w+8].w * r1.w;
      r3.xyz = r1.zzz * cb1[r1.y+8].xyz + r3.xyz;
      r4.xyz = r1.zzz * cb1[r0.x+8].xyz + r4.xyz;
      r1.zw = r1.zz * r2.yx + r5.yx;
      if (r1.x != 0) {
        r0.z = (int)r0.z + 1;
        r2.xyzw = t1.Load(r0.z).xyzw;
        r0.yz = (uint2)r0.yy >> int2(1,4);
        r0.yz = (int2)r0.yz & int2(1792,1792);
        r0.yz = (int2)r0.yz | (int2)r2.xy;
        r2.xy = (uint2)r0.yz << int2(1,1);
        bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
        bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.z = (((uint)r0.z << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
        r0.w = dot(cb1[r2.x+8].xyzw, cb1[r1.y+8].xyzw);
        r2.zw = (uint2)r2.zw;
        r0.w = cmp(r0.w >= 0);
        r0.w = r0.w ? 0.00392156886 : -0.00392156886;
        r0.w = r2.z * r0.w;
        r5.x = cb1[r2.x+8].w * r0.w;
        r5.y = cb1[r0.y+8].w * r0.w;
        r6.xyz = r0.www * cb1[r2.x+8].xyz + r3.xyz;
        r7.xyz = r0.www * cb1[r0.y+8].xyz + r4.xyz;
        r0.yw = r5.xy + r1.wz;
        r1.x = dot(cb1[r2.y+8].xyzw, cb1[r1.y+8].xyzw);
        r1.x = cmp(r1.x >= 0);
        r1.x = r1.x ? 0.00392156886 : -0.00392156886;
        r1.x = r2.w * r1.x;
        r5.x = cb1[r2.y+8].w * r1.x;
        r5.y = cb1[r0.z+8].w * r1.x;
        r3.xyz = r1.xxx * cb1[r2.y+8].xyz + r6.xyz;
        r4.xyz = r1.xxx * cb1[r0.z+8].xyz + r7.xyz;
        r1.zw = r5.yx + r0.wy;
        r3.w = r1.w;
      } else {
        r3.w = r1.w;
      }
      r0.y = dot(r3.xyzw, r3.xyzw);
      r0.y = sqrt(r0.y);
      r2.xyz = r3.xyz / r0.yyy;
      r3.xyz = r4.xyz / r0.yyy;
      r1.w = r3.w;
      r0.yz = r1.zw / r0.yy;
      r2.w = r0.z;
    } else {
      r3.xyz = cb1[r0.x+8].xyz;
      r2.xyzw = cb1[r1.y+8].xyzw;
      r0.y = cb1[r0.x+8].w;
    }
    r1.xyzw = r2.xyzw + r2.xyzw;
    r0.xzw = v0.xyz * cb1[5].www + cb1[5].xyz;
    r4.xyz = r2.yzx * r0.xzw;
    r4.xyz = r2.xyz * r0.zwx + -r4.xyz;
    r4.xyz = r2.www * r0.wxz + r4.xyz;
    r0.xzw = -r1.zxy * r4.zxy + r0.xzw;
    r0.xzw = r1.yzx * r4.xyz + r0.xzw;
    r0.xzw = -r1.zxy * r3.yzx + r0.xzw;
    r0.xzw = r1.yzx * r3.zxy + r0.xzw;
    r0.xzw = r1.www * r3.xyz + r0.xzw;
    r0.xyz = -r0.yyy * r1.xyz + r0.xzw;
    r0.xyz = cb12[15].xyz + r0.xyz;
    r3.xyzw = cb12[1].xyzw * r0.yyyy;
    r3.xyzw = cb12[0].xyzw * r0.xxxx + r3.xyzw;
    r3.xyzw = cb12[2].xyzw * r0.zzzz + r3.xyzw;
    r3.xyzw = cb12[14].xyzw + r3.xyzw;
    r0.w = dot(v1.xyz, v1.xyz);
    r0.w = rsqrt(r0.w);
    r4.xyz = v1.xyz * r0.www;
    r5.xyz = r4.xyz * r2.yzx;
    r5.xyz = r2.xyz * r4.yzx + -r5.xyz;
    r5.xyz = r2.www * r4.zxy + r5.xyz;
    r4.xyz = -r1.zxy * r5.zxy + r4.xyz;
    r4.xyz = r1.yzx * r5.xyz + r4.xyz;
    r0.w = dot(v2.xyz, v2.xyz);
    r0.w = rsqrt(r0.w);
    r5.xyzw = v2.xyzz * r0.wwww;
    r6.xyzw = r5.xyww * r2.yzxx;
    r6.xyzw = r2.xyzz * r5.ywxx + -r6.xyzw;
    r2.xyzw = r2.wwww * r5.wxyy + r6.xyzw;
    r5.xyzw = -r1.zxyy * r2.wxyy + r5.xyzw;
    r1.xyzw = r1.yzxx * r2.xyzw + r5.xyzw;
    r2.xyz = r4.zxy * r1.ywx;
    r2.xyz = r4.yzx * r1.wxy + -r2.xyz;
    o2.xyz = v2.www * r2.xyz;
    r2.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
    r5.xy = r2.zw * cb0[2].xy + cb0[2].zw;
    r0.w = t2.SampleLevel(s1_s, r5.xy, 0).x;
    r0.w = saturate(r0.w * cb0[3].x + cb0[3].y);
    r0.w = cb0[1].x * r0.w;
    r5.xyz = cb0[0].xyz * r0.www;
    r0.xyz = cb0[0].xyz * r0.www + r0.xyz;
    r0.xyz = cb12[7].xyz + r0.xyz;
    r6.xyzw = cb12[1].xyzw * r5.yyyy;
    r6.xyzw = cb12[0].xyzw * r5.xxxx + r6.xyzw;
    r5.xyzw = cb12[2].xyzw * r5.zzzz + r6.xyzw;
    r3.xyzw = r5.xyzw + r3.xyzw;
    r0.w = dot(r4.xyz, r4.xyz);
    r0.w = rsqrt(r0.w);
    r5.xyz = r4.xyz * r0.www;
    r6.xyz = cb0[6].xxx * r5.xyz;
    o4.xyz = r5.xyz * cb0[6].xxx + r0.xyz;
    r0.xyzw = cb12[1].xyzw * r6.yyyy;
    r0.xyzw = cb12[0].xyzw * r6.xxxx + r0.xyzw;
    r0.xyzw = cb12[2].xyzw * r6.zzzz + r0.xyzw;
    o5.xyzw = r3.xyzw + r0.xyzw;
    o0.xyz = r4.xyz;
    o0.w = 1;
    o1.xyzw = r1.xyzw;
    o3.xyzw = r2.xyzw;
  }
  return;
}