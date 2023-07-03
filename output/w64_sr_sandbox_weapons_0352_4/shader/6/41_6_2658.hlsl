// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[3];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[100];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[2].x + 0.25;
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = (uint)vThreadID.x;
    r1.x = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.x;
    r0.z = (uint)r0.z;
    r0.w = (int)r0.z ^ 61;
    r0.z = (uint)r0.z >> 16;
    r0.z = (int)r0.z ^ (int)r0.w;
    r0.z = (int)r0.z * 9;
    r0.w = (uint)r0.z >> 4;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = (int)r0.z * 0x27d4eb2d;
    r0.w = (uint)r0.z >> 15;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r1.w = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r2.zw = float2(2.32830644e-010,2.32830644e-010) * r3.xy;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r3.x = r3.x * 2.32830644e-010 + r2.w;
    r3.z = 0.5 * r3.x;
    r4.xy = r3.xx * float2(0.411428511,-13.3842888) + float2(-0.196070999,65.2928772);
    r4.zw = r3.xx * float2(0.125,-25.1400146) + float2(0,12.7557182);
    r3.z = r3.z * r3.z;
    r3.zw = r4.xy * r3.zz + r4.zw;
    r4.xyz = cmp(r3.xxx >= float3(0,1.33333397,2));
    r4.xyw = r4.xyz ? float3(1,1,1) : 0;
    r4.xyz = r4.xyw + r4.yww;
    r4.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) * r4.xyz;
    r4.xyz = frac(r4.xyz);
    r3.xz = r4.xy * r3.zw;
    r3.xz = float2(2,2) * r3.xz;
    r3.x = r3.x + r3.z;
    r3.x = r4.z * 2 + r3.x;
    r3.x = saturate(r4.w * 1 + r3.x);
    r3.x = r3.x * 14 + 6;
    r4.x = 2.32830644e-010 * r3.y;
    r3.yz = r3.yy * float2(4.65661287e-010,-9.76386957e-011) + float2(-3,1.41935503);
    r3.w = r4.x * r4.x;
    r3.y = r3.y * r3.w + 1;
    r3.y = max(0, r3.y);
    r3.y = r3.y * 0.199999988 + 0.800000012;
    r3.xz = r3.xz * r3.yw;
    r3.y = min(1, r3.z);
    r2.y = 2.32830644e-010 * r0.w;
    r3.zw = r0.ww * float2(1.54938312e-010,1.08964759e-009) + float2(0,-3.68000102);
    r5.xyz = cmp(r0.www >= float3(0,3.93705472e+009,4.2949673e+009));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r4.yz = r5.xy + r5.yz;
    r4.yz = float2(9.99999997e-007,9.99999997e-007) + r4.yz;
    r4.yz = float2(0.5,0.5) * r4.yz;
    r4.yz = frac(r4.yz);
    r3.zw = r4.yz * r3.zw;
    r3.yzw = float3(0.261794984,2,2) * r3.yzw;
    r0.w = r3.z + r3.w;
    r0.w = saturate(9.99999997e-007 + r0.w);
    r1.z = r0.w * 0.75 + 0.75;
    r0.w = cb10[1].x + 0.25;
    r0.w = (int)r0.w;
    r3.z = cb10[0].x + 0.25;
    r3.z = (int)r3.z;
    r4.yz = cb0[5].yz + r2.zw;
    r4.yz = r4.yz * float2(18.9452477,6.99969196) + float2(3.25,0.133332998);
    r4.yz = floor(r4.yz);
    r3.w = dot(r4.yyyy, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r3.w = frac(r3.w);
    r3.w = r3.w * r3.w;
    r3.w = 251 * r3.w;
    r3.w = frac(r3.w);
    r3.w = r3.w * 0.5 + -0.25;
    r3.w = 3.1415925 * r3.w;
    sincos(r3.w, r5.x, r6.x);
    r5.xyz = float3(0,1,0) * r5.xxx;
    r6.yzw = cb9[r3.z+32].yzx * cb9[r3.z+0].zxy;
    r7.xyz = cb9[r3.z+0].yzx * cb9[r3.z+32].zxy + -r6.yzw;
    r3.w = dot(cb9[r3.z+0].xyz, cb9[r3.z+32].xyz);
    r7.w = -r3.w;
    r8.xyz = cb9[r3.z+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r3.z+32].wwww * r8.xyzw + r7.xyzw;
    r6.yzw = -cb9[r3.z+32].zxy * r7.yzx;
    r6.yzw = -cb9[r3.z+32].yzx * r7.zxy + -r6.yzw;
    r6.yzw = cb9[r3.z+32].www * r7.xyz + r6.yzw;
    r6.yzw = r7.www * -cb9[r3.z+32].xyz + r6.yzw;
    r3.w = dot(r4.zzzz, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r3.w = frac(r3.w);
    r3.w = r3.w * r3.w;
    r3.w = 251 * r3.w;
    r3.w = frac(r3.w);
    r3.w = -1 + r3.w;
    r3.w = 3.1415925 * r3.w;
    sincos(r3.w, r7.x, r8.x);
    r7.xyz = float3(1,0,0) * r7.xxx;
    r8.yzw = -cb9[r3.z+32].zxy * cb9[r0.w+32].yzx;
    r8.yzw = -cb9[r3.z+32].yzx * cb9[r0.w+32].zxy + -r8.yzw;
    r3.w = dot(-cb9[r3.z+32].xyz, cb9[r0.w+32].xyz);
    r9.w = -r3.w;
    r9.xyz = cb9[r3.z+32].www * cb9[r0.w+32].xyz + r8.yzw;
    r10.xyzw = cb9[r3.z+32].xyzw * float4(-1,-1,-1,1);
    r9.xyzw = cb9[r0.w+32].wwww * r10.xyzw + r9.xyzw;
    r11.xyzw = r9.zxyy * r5.yzzy;
    r8.yzw = -r5.zzy * r9.yzx + r11.xyz;
    r11.w = -r11.w;
    r11.xyz = r6.xxx * r9.xyz + r8.yzw;
    r5.w = r6.x;
    r9.xyzw = r9.wwww * r5.xyzw + r11.xyzw;
    r8.yzw = cb9[r3.z+32].zxy * r9.yzx;
    r8.yzw = cb9[r3.z+32].yzx * r9.zxy + -r8.yzw;
    r3.w = dot(cb9[r3.z+32].xyz, r9.xyz);
    r11.w = -r3.w;
    r11.xyz = cb9[r3.z+32].www * r9.xyz + r8.yzw;
    r9.xyzw = r9.wwww * cb9[r3.z+32].xyzw + r11.xyzw;
    r8.yzw = -cb9[r3.z+32].zxy * r9.yzx;
    r8.yzw = -cb9[r3.z+32].yzx * r9.zxy + -r8.yzw;
    r3.w = dot(-cb9[r3.z+32].xyz, r9.xyz);
    r11.w = -r3.w;
    r11.xyz = cb9[r3.z+32].www * r9.xyz + r8.yzw;
    r9.xyzw = r9.wwww * r10.xyzw + r11.xyzw;
    r10.xyzw = r9.zxyx * r7.zzxx;
    r8.yzw = -r7.zxz * r9.yzx + r10.xyz;
    r10.w = -r10.w;
    r10.xyz = r8.xxx * r9.xyz + r8.yzw;
    r7.w = r8.x;
    r9.xyzw = r9.wwww * r7.xyzw + r10.xyzw;
    r8.yzw = cb9[r3.z+32].zxy * r9.yzx;
    r8.yzw = cb9[r3.z+32].yzx * r9.zxy + -r8.yzw;
    r3.w = dot(cb9[r3.z+32].xyz, r9.xyz);
    r10.w = -r3.w;
    r10.xyz = cb9[r3.z+32].www * r9.xyz + r8.yzw;
    r9.xyzw = r9.wwww * cb9[r3.z+32].xyzw + r10.xyzw;
    r8.yzw = cb9[r3.z+32].yzx * cb9[r0.w+0].zxy;
    r10.xyz = cb9[r0.w+0].yzx * cb9[r3.z+32].zxy + -r8.yzw;
    r3.w = dot(cb9[r0.w+0].xyz, cb9[r3.z+32].xyz);
    r10.w = -r3.w;
    r11.xyz = cb9[r0.w+0].xyz;
    r11.w = 0;
    r10.xyzw = cb9[r3.z+32].wwww * r11.xyzw + r10.xyzw;
    r8.yzw = -cb9[r3.z+32].zxy * r10.yzx;
    r8.yzw = -cb9[r3.z+32].yzx * r10.zxy + -r8.yzw;
    r8.yzw = cb9[r3.z+32].www * r10.xyz + r8.yzw;
    r8.yzw = r10.www * -cb9[r3.z+32].xyz + r8.yzw;
    r8.yzw = r8.yzw + -r6.yzw;
    r10.xyzw = r8.zwyz * -r5.zzyy;
    r11.xyz = -r8.wyz * -r5.yzz + r10.xyz;
    r11.w = -r10.w;
    r10.xyz = r8.yzw * r6.xxx;
    r10.w = 0;
    r10.xyzw = r11.xyzw + r10.xyzw;
    r8.yzw = r10.yzx * r5.zzy;
    r8.yzw = r5.yzz * r10.zxy + -r8.yzw;
    r8.yzw = r6.xxx * r10.xyz + r8.yzw;
    r5.xyz = r10.www * r5.zyz + r8.yzw;
    r8.yzw = -cb9[r3.z+32].yzx * r5.zxy;
    r10.xyz = r5.yzx * -cb9[r3.z+32].zxy + -r8.yzw;
    r0.w = dot(r5.xyz, -cb9[r3.z+32].xyz);
    r10.w = -r0.w;
    r5.xyz = cb9[r3.z+32].www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r10.xyzw + r5.xyzw;
    r8.yzw = cb9[r3.z+32].zxy * r5.yzx;
    r8.yzw = cb9[r3.z+32].yzx * r5.zxy + -r8.yzw;
    r5.xyz = cb9[r3.z+32].www * r5.xyz + r8.yzw;
    r5.xyz = r5.www * cb9[r3.z+32].xyz + r5.xyz;
    r5.xyz = cb9[r3.z+0].xyz + r5.xyz;
    r8.yzw = cb9[r3.z+32].yzx * r5.zxy;
    r10.xyz = r5.yzx * cb9[r3.z+32].zxy + -r8.yzw;
    r0.w = dot(r5.xyz, cb9[r3.z+32].xyz);
    r10.w = -r0.w;
    r5.xyz = cb9[r3.z+32].www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r10.xyzw + r5.xyzw;
    r8.yzw = -cb9[r3.z+32].zxy * r5.yzx;
    r8.yzw = -cb9[r3.z+32].yzx * r5.zxy + -r8.yzw;
    r5.xyz = cb9[r3.z+32].www * r5.xyz + r8.yzw;
    r5.xyz = r5.www * -cb9[r3.z+32].xyz + r5.xyz;
    r5.xyz = r5.xyz + -r6.yzw;
    r6.xyzw = r5.yzxx * -r7.zxzx;
    r10.xyz = -r5.zxy * -r7.zzx + r6.xyz;
    r10.w = -r6.w;
    r5.xyz = r8.xxx * r5.xyz;
    r5.w = 0;
    r5.xyzw = r10.xyzw + r5.xyzw;
    r6.xyz = r7.zxz * r5.yzx;
    r6.xyz = r7.zzx * r5.zxy + -r6.xyz;
    r5.xyz = r8.xxx * r5.xyz + r6.xyz;
    r5.xyz = r5.www * r7.xzz + r5.xyz;
    r6.xyz = -cb9[r3.z+32].yzx * r5.zxy;
    r6.xyz = r5.yzx * -cb9[r3.z+32].zxy + -r6.xyz;
    r0.w = dot(r5.xyz, -cb9[r3.z+32].xyz);
    r6.w = -r0.w;
    r5.xyz = cb9[r3.z+32].www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r6.xyzw + r5.xyzw;
    r6.xyz = cb9[r3.z+32].zxy * r5.yzx;
    r6.xyz = cb9[r3.z+32].yzx * r5.zxy + -r6.xyz;
    r5.xyz = cb9[r3.z+32].www * r5.xyz + r6.xyz;
    r5.xyz = r5.www * cb9[r3.z+32].xyz + r5.xyz;
    r5.xyz = cb9[r3.z+0].xyz + r5.xyz;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = r0.z * r3.y;
    r0.zw = float2(2.32830644e-010,1.46291812e-009) * r0.zw;
    sincos(r0.z, r6.x, r7.x);
    sincos(r0.w, r8.x, r10.x);
    r7.y = r8.x * r6.x;
    r7.z = r10.x * r6.x;
    r3.xyz = r7.xyz * r3.xxx;
    r6.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r6.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r6.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r6.w = -r0.z;
    r7.xyz = cb9[r0.y+0].xyz;
    r7.w = 0;
    r6.xyzw = cb9[r0.y+32].wwww * r7.xyzw + r6.xyzw;
    r7.xyz = -cb9[r0.y+32].zxy * r6.yzx;
    r7.xyz = -cb9[r0.y+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.y+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * -cb9[r0.y+32].xyz + r6.xyz;
    r7.xyz = -cb9[r0.y+32].zxy * r9.yzx;
    r7.xyz = -cb9[r0.y+32].yzx * r9.zxy + -r7.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r9.xyz);
    r8.w = -r0.z;
    r8.xyz = cb9[r0.y+32].www * r9.xyz + r7.xyz;
    r7.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r7.xyzw = r9.wwww * r7.xyzw + r8.xyzw;
    r8.xyz = cb9[r0.y+32].yzx * r5.zxy;
    r8.xyz = r5.yzx * cb9[r0.y+32].zxy + -r8.xyz;
    r0.z = dot(r5.xyz, cb9[r0.y+32].xyz);
    r8.w = -r0.z;
    r5.xyz = cb9[r0.y+32].www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r8.xyzw + r5.xyzw;
    r8.xyz = -cb9[r0.y+32].zxy * r5.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r5.zxy + -r8.xyz;
    r5.xyz = cb9[r0.y+32].www * r5.xyz + r8.xyz;
    r0.yzw = r5.www * -cb9[r0.y+32].xyz + r5.xyz;
    r5.xyz = -r6.xyz + r0.yzw;
    r0.yzw = -r7.yzx * r3.zxy;
    r6.xyz = r3.yzx * -r7.zxy + -r0.yzw;
    r0.y = dot(r3.xyz, -r7.xyz);
    r6.w = -r0.y;
    r3.xyz = r7.www * r3.xyz;
    r3.w = 0;
    r3.xyzw = r6.xyzw + r3.xyzw;
    r0.yzw = r7.zxy * r3.yzx;
    r0.yzw = r7.yzx * r3.zxy + -r0.yzw;
    r0.yzw = r7.www * r3.xyz + r0.yzw;
    r3.xyz = r3.www * r7.xyz + r0.yzw;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
    r3.w = 100000;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r3.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.xxxx, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.yyyy, l(0,0,0,0)
    r1.y = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.zzzz, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.wwww, r2.xyzw
    r0.y = (int)r0.x + 5;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xwww
  }
  return;
}